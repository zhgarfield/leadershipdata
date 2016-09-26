## Import all data into data frames and recode as necessary
library(devtools)
library(dplyr)
library(tidyr)
library(car)
library(reshape2)
library(stats)
####IMPORTING DATA SETS

##Importing the intial data set that includes leadership models beyond those analyzed in the MA.

d<-read.csv("data-raw/zg_leadership3.csv")

###creating factor variables

# prestige variables
d$prestige_counsel.f<-factor(d$prestige_counsel, labels =c("no evidence", "evidence for"))
d$prestige_emulated.f<-factor(d$prestige_emulated, labels =c("no evidence", "evidence for"))
d$prestige_expertise.f<-factor(d$prestige_expertise, labels =c("no evidence", "evidence against", "evidence for"))
d$prestige_family.f<-factor(d$prestige_family, labels =c("no evidence", "evidence against", "evidence for"))
d$prestige_f.exp.success.f<-factor(d$prestige_f.exp.success, labels =c("no evidence", "evidence for"))
d$prestige_f.exp.success.f<-factor(d$prestige_f.exp.success, labels =c("no evidence", "evidence for"))
d$prestige_likable.f<-factor(d$prestige_likable, labels =c("no evidence", "evidence against", "evidence for"))
d$prestige_respected.f<-factor(d$prestige_respected, labels =c("no evidence", "evidence against", "evidence for"))
#dominance variables
d$dom_aggression.f<-factor(d$dom_aggression, labels =c("no evidence", "evidence against", "evidence for"))
d$dom_assert.authority.f<-factor(d$dom_assert.authority, labels =c("no evidence", "evidence against", "evidence for"))
d$dom_avoid.dom.f<-factor(d$dom_avoid.dom, labels =c("no evidence", "evidence for"))
d$dom_fear.f<-factor(d$dom_fear, labels =c("no evidence", "evidence for"))
d$dom_fighting.f<-factor(d$dom_fighting, labels =c("no evidence", "evidence for"))
d$dom_personality.f<-factor(d$dom_personality, labels =c("no evidence", "evidence against", "evidence for"))
d$dom_reputation.f<-factor(d$dom_reputation, labels =c("no evidence", "evidence for"))
d$dom_strong.f<-factor(d$dom_strong, labels =c("no evidence", "evidence for"))
#Neel variables
d$neel_better.mates.f<-factor(d$neel_better.mates, labels =c("no evidence", "evidence for"))
d$neel_big.family.f<-factor(d$neel_big.family, labels =c("no evidence", "evidence for"))
d$neel_intelligence.f<-factor(d$neel_intelligence, labels =c("no evidence", "evidence against", "evidence for"))
d$neel_polygynous.f<-factor(d$neel_polygynous, labels =c("no evidence", "evidence for"))
# VanVugt variables
d$vanvugt_coordinating.f<-factor(d$vanvugt_coordinating, labels =c("no evidence", "evidence against", "evidence for"))
d$vanvugt_strategic.f<-factor(d$vanvugt_strategic, labels =c("no evidence", "evidence against", "evidence for"))

## Incorporating SCCS label, variables
load('data-raw/sccs.RData')
sccs = as.data.frame(sccs)
# ID's of SCCS cultures that correspond to HRAF probability sample cultures
sccs.nums=c(19,37,79,172,28,7,140,76,121,109,124,24,87,12,69,181,26,51,149,85,112,125,16,94,138,116,158,57,102,4,34,182,13,127,52,62,165,48,42,36,113,152,100,16,132,98,167,154,21,120)

## adding variables SCCS variables
sccs.vars=c('SOCNAME','V61','V63', 'V64', 'V69','V70', 'V73', 'V76', 'V77',  'V79',
            'V80', 'V81', 'V83', 'V84', 'V85', 'V93', 'V94', 'V156', 'V158', 'V158.1',
            'V207', 'V208', 'V210', 'V234', 'V235', 'V236', 'V247', 'V270', 'V276',
            'V573', 'V574', 'V575', 'V587', 'V666', 'V669', 'V670', 'V679',
            'V756', 'V758', 'V759', 'V760', 'V761', 'V762', 'V763', 'V764', 'V765', 'V766', 'V767',
            'V768', 'V769', 'V770', 'V773', 'V774', 'V775', 'V777', 'V778', 'V780', 'V785', 'V793', 'V794',
            'V795', 'V796', 'V835', 'V836', 'V860', 'V866', 'V867', 'V868', 'V869', 'V902', 'V903', 'V905',
            'V907', 'V910', 'V1133', 'V1134', 'V1683', 'V1684', 'V1685')
sccs.2=sccs[sccs.nums,sccs.vars]
Culture.codes <- read.delim("data-raw/Culture codes.txt")

Culture.codes$SCCS = as.character(Culture.codes$SCCS)
sccs.2 = merge(sccs.2, Culture.codes, by.x='row.names', by.y='SCCS')
cultures <- read.delim("data-raw/cultures.txt")
cultures = merge(cultures, sccs.2, by='Culture.code', all=T)
rm(sccs.2)

##d uses "c_culture_code", cultures uses "Culture.code" -- only two differences, e.g. two groups in PSF not in SCCS
cultures$c_culture_code<-cultures$Culture.code

## Identifying extracts with no coding (*d2 is extract level data with all extracts will all 0s removed)
#rowSums(d[,c(13:26,28:80)]!=-1)
## here we're using only the variables with numeric coding
#d2 = d[rowSums(d[,c(13:26,28:80)]!=-1)!=0,]

## Isolating variables for MA focus
## Prestige/Dominance variables, VV variables, Neel variables (*d3 is main extract level data frame
d3 = d[,c(1:12, 27:35, 51:54, 61:67, 79:80)]

# Rows that are all zero on study variables == 1
a=0
for (i in 1:nrow(d3)){a[i] = 1*(sum(abs(d3[i,14:34]))==0)}
d3$all.zero = a
d4 = d3[d3$all.zero!=1,]

d3$c_cultural_complexity <-as.numeric(d3$c_cultural_complexity)

## Recode 0 to -1, and -1 to 0
tmp = as.matrix(d3[,14:34])
tmp[tmp==0] = -2
tmp[tmp==-1] = 0
tmp[tmp==-2] = -1
d3[,14:34] = tmp
rm(tmp)

##Culture level data

# Try to replicate d.ct in R
# PSF has Bahia Brazilians, but no leadership extracts from that culture, so delete that row

d.ct = read.csv('data-raw/culture_fmpro2.csv', stringsAsFactors=F)
d.ct = filter(d.ct, c_name != 'Bahia Brazilians ') # Not in d
d.ct = left_join(d.ct, table(d3$c_name), by=c('c_name'='Var1'), copy=T)
#d.ct = rename(d.ct, extract_count=Freq)
d.ct=dplyr::rename(d.ct, extract_count = Freq)

# This function calculates the total +1, 0, or -1 for a set of model vars (e.g., neel_vars) for each culture (on d3)
# Set 'vars' to the model variables and val to +1, 0, or -1

# The problem with this is that it assumes d3 and d.ct have both been sorted by c_name
# model_total = function(vars, val){
#   as.numeric(by(d3[,vars], d3$c_name, FUN=function(x){sum(x==val, na.rm=T)}))
# }

model_total = function(vars, val, var_name){
  x = by(d3[,vars], d3$c_name, FUN=function(x){sum(x==val, na.rm=T)})
  y = data.frame(c_name=names(x), var_name=as.numeric(x))
  names(y) = c('c_name', var_name)
  return(y)
}

all_totals = function(vars, prefix){
  d.ct[paste(prefix, '_total_cell_count', sep='')] = d.ct$extract_count * length(vars)
  d.ct = left_join(d.ct, model_total(vars, 1, paste(prefix, '_total_for', sep='')))
  d.ct = left_join(d.ct, model_total(vars, 0, paste(prefix, '_total_none', sep='')))
  d.ct = left_join(d.ct, model_total(vars, -1, paste(prefix, '_total_against', sep='')))
}

# Neel vars
neel_vars = c('neel_better.mates','neel_big.family', 'neel_intelligence', 'neel_polygynous')
d.ct = all_totals(neel_vars, 'neel')

# Prestige vars
prest_vars = c('prestige_counsel','prestige_emulated', 'prestige_expertise', 'prestige_family', 'prestige_f.exp.success', 'prestige_likable', 'prestige_respected')
d.ct = all_totals(prest_vars, 'prest')

# Dominance vars
dom_vars = c('dom_aggression','dom_assert.authority', 'dom_avoid.dom', 'dom_fear', 'dom_fighting', 'dom_personality', 'dom_reputation', 'dom_strong')
d.ct = all_totals(dom_vars, 'dom')

# Van Vugt vars
vv_vars = c('vanvugt_coordinating', 'vanvugt_strategic')
d.ct = all_totals('vanvugt_coordinating', 'vvcoord')
d.ct = all_totals('vanvugt_strategic', 'vvstrat')

all_vars= c(neel_vars, prest_vars, dom_vars, vv_vars)

## creating cumulative distriubtion table variables
d3$evidence_prestige_for = (rowSums(d3[,prest_vars]==1))
d3$evidence_prestige_against = (rowSums(d3[,prest_vars]==-1))
d3$evidence_dom_for = (rowSums(d3[,dom_vars]==1))
d3$evidence_dom_against = (rowSums(d3[,dom_vars]==-1))
d3$evidence_neel_for = (rowSums(d3[,neel_vars]==1))
d3$evidence_neel_against = (rowSums(d3[,neel_vars]==-1))
d3$evidence_vv_for = (rowSums(d3[,vv_vars]==1))
d3$evidence_vv_against = (rowSums(d3[,vv_vars]==-1))

# # dplyr version (incomplete)
#
# d.ct.new2 = d3 %>%
#   group_by(c_name) %>%
#   summarise(
#     extract_count = n(),
#     neel_total_cell_count = n() * length(neel_vars),
#     neel_total_for = sum((neel_better.mates==1) + (neel_big.family==1) + (neel_intelligence==1) + (neel_polygynous==1)),
#     neel_total_none = sum((neel_better.mates==0) + (neel_big.family==0) + (neel_intelligence==0) + (neel_polygynous==0)),
#     neel_total_against = sum((neel_better.mates==-1) + (neel_big.family==-1) + (neel_intelligence==-1) + (neel_polygynous==-1))
#   )

## data set of all important culture level variables (*d.ct is main culture level data with model scores and model level variables)
d.ct.old <-read.csv("data-raw/cultures.totals.csv")
d.ct.old$c_cultural_complexity <-as.numeric(d.ct$c_cultural_complexity)

# Check d.ct against d.ct.old
sum(d.ct$neel_total_for==d.ct.old$neel_total_for)/nrow(d.ct)
sum(d.ct$neel_total_against==d.ct.old$neel_total_against)/nrow(d.ct)

sum(d.ct$prest_total_for==d.ct.old$prest_total_for)/nrow(d.ct)
sum(d.ct$prest_total_against==d.ct.old$prest_total_against)/nrow(d.ct)

sum(d.ct$dom_total_for==d.ct.old$dom_total_for)/nrow(d.ct)
sum(d.ct$dom_total_against==d.ct.old$dom_total_against)/nrow(d.ct)


## making data set of model totals by subsistence type - include total for, total against for each model (*d.sub is subsistence level, not used in main analyses)
d.sub <-read.csv("data-raw/d.sub_by_model_totals.csv")

##Creating data set of variable list with proportions (*d.prop is list of proportions at model level for extracts)
d.prop <-read.csv("data-raw/d.prop.csv")

##Merging cultures data with d.ct

d.ct=merge(cultures, d.ct, by='c_culture_code', all=T)



####RECODING / MANAGING VARIABLES

## Doing some recoding of subsistence level
d3$subsistence2<-recode(d3$c_subsistence_type, "'forager/food producers'= 'hunter gatherers'; 'foragers'='hunter gatherers';'horticulturalists'='horticulturalists'; 'intensive agriculturalists'='agriculturalists';'other'='other';'pastoral/agriculturalists'='pastoralists';'pastoralists'='pastoralists'")
d.ct$subsistence2<-recode(d.ct$c_subsistence_type, "'forager/food producers'= 'hunter gatherers'; 'foragers'='hunter gatherers';'horticulturalists'='horticulturalists'; 'intensive agriculturalists'='agriculturalists';'other'='other';'pastoral/agriculturalists'='pastoralists';'pastoralists'='pastoralists'")
d.ct.old$subsistence2<-recode(d.ct.old$c_subsistence_type, "'forager/food producers'= 'hunter gatherers'; 'foragers'='hunter gatherers';'horticulturalists'='horticulturalists'; 'intensive agriculturalists'='agriculturalists';'other'='other';'pastoral/agriculturalists'='pastoralists';'pastoralists'='pastoralists'")


d3$region2<-recode(d3$c_subregion, "'Amazon and Orinoco'='South America'; 'Arctic and Subarctic'='North America'; 'Australia'='Insular Pacific'; 'British Isles'='Circum-Mediterranean';
                   'Central Africa'= 'Africa'; 'Central America'='South America'; 'Central Andes'='South America'; 'East Asia'='East Eurasia'; 'Eastern Africa'='Circum-Mediterranean';
                   'Eastern South America'='South America'; 'Eastern Woodlands'='North America'; 'Maya Area'='North America'; 'Melanesia'='Insular Pacific'; 'Micronesia'='Insular Pacific';
                   'Middle East'='Circum-Mediterranean'; 'North Asia'='East Eurasia'; 'Northern Africa'='Africa'; 'Northern Mexico'='North America';
                   'Northwest Coast and California'='North America'; 'Northwestern South America'='South America'; 'Plains and Plateau'='North America';
                   'Polynesia'='Insular Pacific'; 'Scandinavia'='Circum-Mediterranean'; 'South Asia'='East Eurasia'; 'Southeast Asia'='Insular Pacific';
                   'Southeastern Europe'='Circum-Mediterranean'; 'Southern Africa'='Africa'; 'Southern South America'='South America'; 'Southwest and Basin'= 'North America'; 'Western Africa'='Africa'")

d.ct$region2<-recode(d.ct$c_subregion, "'Amazon and Orinoco'='South America'; 'Arctic and Subarctic'='North America'; 'Australia'='Insular Pacific'; 'British Isles'='Circum-Mediterranean';
                     'Central Africa'= 'Africa'; 'Central America'='South America'; 'Central Andes'='South America'; 'East Asia'='East Eurasia'; 'Eastern Africa'='Circum-Mediterranean';
                     'Eastern South America'='South America'; 'Eastern Woodlands'='North America'; 'Maya Area'='North America'; 'Melanesia'='Insular Pacific'; 'Micronesia'='Insular Pacific';
                     'Middle East'='Circum-Mediterranean'; 'North Asia'='East Eurasia'; 'Northern Africa'='Africa'; 'Northern Mexico'='North America';
                     'Northwest Coast and California'='North America'; 'Northwestern South America'='South America'; 'Plains and Plateau'='North America';
                     'Polynesia'='Insular Pacific'; 'Scandinavia'='Circum-Mediterranean'; 'South Asia'='East Eurasia'; 'Southeast Asia'='Insular Pacific';
                     'Southeastern Europe'='Circum-Mediterranean'; 'Southern Africa'='Africa'; 'Southern South America'='South America'; 'Southwest and Basin'= 'North America'; 'Western Africa'='Africa'")

d.ct$subsistence2<-as.factor(d.ct$subsistence2)

##above, recoded d3$region, according to SCCS region, using eHRAF subregion. BUT, one Southeast Asia (Central Thai) that should be East Eurasia coded as Insular Pacific
#### and 3 Western Africa coded as Africa that should be Circum Medeterainian (Dogon, Hause, Wolof)

###Recoding SCCS variables
d.ct$settlement_fixity2<-recode(d.ct$V61, "''='NA'; 'Impermanent-periodically moved'='Impermanent-periodically moved'; 'Migratory'='Migratory'; 'Permanent'='Permanent'; 'Rotating among 2+ fixed'='Impermanent-periodically moved'; 'Seminomadic-fixed then migratory'='Seminomadic'; 'Semisedentary-fixed core, some migratory'='Semisedentary'")

d.ct$com_size2<-recode(d.ct$V63, "''='NA'; '< 50'='< 99'; '1,000-4,999'='> 1,000'; '100-199'='100-199'; '200-399'='200-399'; '400-999'='400-999'; '50-99'='< 99'")

d.ct$pop_density2<-recode(d.ct$V64, "''='NA'; '< 1 person / 5 sq. mile'='≤ 1 person / 1-5 sq. mile'; '1 person / 1-5 sq. mile'='≤ 1 person / 1-5 sq. mile'; '1-25 persons / sq. mile'='1-25 persons / sq. mile'; '1-5 persons / sq. mile'='1-25 persons / sq. mile'; '101-500 persons / sq. mile'='101-500 persons / sq. mile'; '26-100 persons / sq. mile'='26-100 persons / sq. mile'; 'over 500 persons / sq. mile'='over 500 persons / sq. mile'")

d.ct$V69[d.ct$V69==""]=NA
d.ct$V69=factor(d.ct$V69)
#d.ct$V69<- recode(d.ct$V69, "'NA'='NA'; 'Ambilocal-w/ either wife\'s or husband\'s kin'='Ambilocal'; 'Avunculocal-w/husband\'s mother\'s brother\'s kin'='Avunculocal'; 'Matrilocal or uxorilocal-with wife\'s kin'='Matrilocal'; 'Neolocal-separate from kin'='Neolocal'; 'Patrilocal or virilocal'='Patrilocal'")

##### CREATING AGGREGATE DATA SET
## Summarize support for each variable by culture

# Score 1 if *any* extract within a culture has a 1 for that variable (*d.ct2 is culture level data [single count evidence for] for variable analyses)
# More accurately: balance of +1 against -1

# d.ct2 = aggregate(d3[,14:34], by=list(d3$c_name), FUN = function(x) {(sum(x) > 0)*1})
# d.ct2$c_name=d.ct2$Group.1
# #creating a dataframe of means values of variables at culture level (*d.ct3 is culture level data [means of variables] for variables )
# d.ct3 = aggregate(d3[,14:34], by=list(d3$c_name), FUN = mean)

# Compute models scores by culture
d.ct$neel_cult_score = as.numeric(by(d3[,c('c_name', neel_vars)], d3$c_name, FUN=function(x) mean(as.matrix(x[,-1]), na.rm=T)))
d.ct$prest_cult_score = as.numeric(by(d3[,c('c_name', prest_vars)], d3$c_name, FUN=function(x) mean(as.matrix(x[,-1]), na.rm=T)))
d.ct$dom_cult_score = as.numeric(by(d3[,c('c_name', dom_vars)], d3$c_name, FUN=function(x) mean(as.matrix(x[,-1]), na.rm=T)))

##adding in some other culture level variables
#d.ct2 <-merge(d.ct, d.ct2, by="c_name")

present = function(x) {(sum(x) > 0)*1}
d.ct = d3 %>%
  group_by(c_name) %>%
  dplyr::select(one_of(all_vars)) %>%
  summarise_each(funs(present, mean)) %>%
  left_join(d.ct, by='c_name')


## End

#### CREATING DATA FRAMES FOR MODELS ETC. (all extract level data frames for model totals)

## Creating variables based on models totaling for, none, and against
d3$dom_for = rowSums(d3[,c('dom_aggression', 'dom_fear', 'dom_assert.authority',
                           'dom_avoid.dom', 'dom_fighting', 'dom_personality',
                           'dom_reputation', 'dom_strong')]==1)

d3$dom_against = rowSums(d3[,c('dom_aggression', 'dom_fear', 'dom_assert.authority',
                               'dom_avoid.dom', 'dom_fighting', 'dom_personality',
                               'dom_reputation', 'dom_strong')]==-1)

d3$dom_none = rowSums(d3[,c('dom_aggression', 'dom_fear', 'dom_assert.authority',
                            'dom_avoid.dom', 'dom_fighting', 'dom_personality',
                            'dom_reputation', 'dom_strong')]==0)
d3$dom_sum = d3$dom_for + d3$dom_against

d3$prestige_for = rowSums(d3[,c('prestige_counsel', 'prestige_emulated', 'prestige_expertise',
                                'prestige_family', 'prestige_f.exp.success', 'prestige_likable',
                                'prestige_respected')]==1)

d3$prestige_against = rowSums(d3[,c('prestige_counsel', 'prestige_emulated', 'prestige_expertise',
                                    'prestige_family', 'prestige_f.exp.success', 'prestige_likable',
                                    'prestige_respected')]==-1)

d3$prestige_none = rowSums(d3[,c('prestige_counsel', 'prestige_emulated', 'prestige_expertise',
                                 'prestige_family', 'prestige_f.exp.success', 'prestige_likable',
                                 'prestige_respected')]==0)
d3$prestige_sum= d3$prestige_for + d3$prestige_against

d3$neel_for = rowSums(d3[,c('neel_better.mates', 'neel_big.family', 'neel_intelligence',
                            'neel_polygynous')]==1)

d3$neel_against = rowSums(d3[,c('neel_better.mates', 'neel_big.family', 'neel_intelligence',
                                'neel_polygynous')]==-1)

d3$neel_none = rowSums(d3[,c('neel_better.mates', 'neel_big.family', 'neel_intelligence',
                             'neel_polygynous')]==0)
d3$neel_sum = d3$neel_for + d3$neel_against

#### MERGING Culture level variables with extract level variables (*dm is extract level data, but with culture level variables attached to each extract)
dm <-merge(d3, d.ct, by="c_name")


##new data frames by model (no culture name)
d.dom = d3[,c(14:21)]
d.prest = d3[,c(26:32)]
d.neel = d3[,c(22:25)]
d.vv=d3[,c(33:34)]
d.vvstrat = d3[,c(34)]
d.vvcoord = d3[,c(33)]
## these codes include culture names, removed from script
#d.dom = d3[,c(5, 14:21)]
#d.prest = d3[,c(5, 26:32)]
#d.neel = d3[,c(5, 22:25)]
#d.vv=d3[,c(5, 33:34)]
#d.vvstrat = d3[,c(5, 34)]
#d.vvcoord = d3[,c(5, 33)]

## making d.dom data set with only extracts that have data, e.g. removes all extracts with all noevidence
d.dom2 = d.dom[rowSums(d.dom!=0)!=0,]
## does not lose any cultures!!

## eliminating empty extracts from prestige model data set
d.prest2 = d.prest[rowSums(d.prest!=0)!=0,]
## does not loose any cultures

## for Neel model
d.neel2 = d.neel[rowSums(d.neel!=0)!=0,]
#does not lose any cultures

## for VV variables (both strat and coord in frame)
d.vv2 = d.vv[rowSums(d.vv!=0)!=0,]
#does not lose any cultures

##making variables of totals for each model (these omit cases where there is a 1 and -1)
d3$dom_totals = d3$dom_aggression + d3$dom_assert.authority + d3$dom_avoid.dom + d3$dom_fear + d3$dom_fighting + d3$dom_personality + d3$dom_reputation + d3$dom_strong
d3$prest_totals = d3$prestige_emulated + d3$prestige_likable + d3$prestige_counsel + d3$prestige_expertise + d3$prestige_f.exp.success + d3$prestige_respected + d3$prestige_family

## putting data in long form
d.tmp=melt(d3[,c(1, 14:34)], id.vars='cs_ID')
head(d.tmp)
# table(d.tmp)
# table(d3)
table(d.tmp$variable, d.tmp$value)
t=table(d.tmp$variable, d.tmp$value)
t

d.ctPKG<-d.ct[,c(1:53,132:167)]

leader_text<-d3
leader_cult<-d.ctPKG
use_data(leader_text,leader_cult,overwrite=TRUE)
