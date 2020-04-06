

#' @title Text-level data from HRAF search.
#' @description All 1212 ethnographic paragraphs produced by eHRAF search and coded as evidence for, against, no evidence on variables from theories of leadership. This dataframe provides the sample of ethnographic texts "leadership_text" and "leadership_text2" are developed from.
#' @format A data frame with 1212 rows and 72 variables:
#' \describe{
#'   \item{\code{cs_ID}}{integer. Internally assigned code sheet ID.}
#'   \item{\code{cs_textrec_ID}}{double. Internally assigned text record ID. In some cases one text record produced multiple code sheets.}
#'   \item{\code{text_type}}{integer. Classifying text type as: Cultural model, Case, or Both}
#'   \item{\code{c_culture_code}}{integer. OWC Culture code from eHRAF.}
#'   \item{\code{c_name}}{integer. HRAF culture name.}
#'   \item{\code{c_region}}{integer. HRAF culture region.}
#'   \item{\code{c_subregion}}{integer. HRAF sub-region.}
#'   \item{\code{c_subsistence_type}}{integer. HRAF subsistence type classification.}
#'   \item{\code{c_subsistence_code}}{integer. Numeric code assigned to HRAF subsistence classification.}
#'   \item{\code{c_latitude}}{double. Latitude of culture location from SCCS or HRAF information.}
#'   \item{\code{c_longitude}}{double. Longitude of culture location from SCCS or HRAF information.}
#'   \item{\code{c_cultural_complexity}}{double. Cultural complexity score from SCCS variable 158.1.}
#'   \item{\code{demo_sex}}{integer. Sex of the leader described coded as male, female, or both.}
#'   \item{\code{dom_aggression}}{double. Does the leader use coercive control, aggression, or threats of violence? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{dom_assert.authority}}{double. Does the leader asserts authority over unwilling others, or have power over followers? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against.}
#'   \item{\code{dom_avoid.dom}}{double. Does the leader avoid being controlled by others? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{dom_fear}}{double. Does the leader instill fear in followers? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{dom_fighting}}{double. Does the leader demonstrate, or is known for superior fighting ability? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{dom_personality}}{double. Does the leader have a forceful or dominant personality? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{dom_reputation}}{double. Does the leader's reputation lead followers to be submissive? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{dom_strong}}{double. Is the leader seen as physically stronger than most followers? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{hooper_performance}}{double. Does leader functions to increase performance and group coordination in collective action through supervision? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{hooper_sanction.freeriders}}{double. Does the leader sanction against free-riding in collective activities? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{hooper_payoff}}{double. Does the leader receive a share of productivity from collective activities? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{hooper_group.size}}{double. Does leadership emerges in response to group size in collective activities? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{hooper_coop.activities}}{double. Do followers prefer a leader in large, otherwise egalitarian, groups during cooperative activities? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{neel_better.mates}}{double. Does the leader have higher quality mates relative to followers? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{neel_big.family}}{double. Does the leader have a larger (nuclear) family size relative to followers? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{neel_intelligence}}{double. Does the leader have high intelligence, above average knowledge, high cognitive abilities? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{neel_polygynous}}{double. Is the leader polygynous? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{prestige_counsel}}{double. Does the leader provide valued opinions, or is sought out for counsel? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{prestige_emulated}}{double. Do followers emulate the leader? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{prestige_expertise}}{double. Does the leader demonstrate expert knowledge, or have unique talents and abilities? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{prestige_family}}{double. Does the leader gain prestige or influence based on family level prestige? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{prestige_f.exp.success}}{double. Do followers have an expectation of success of the leader? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{prestige_likable}}{double. Is the leader likable? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{prestige_respected}}{double. Is the leader respected, admired, or held in high esteem? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{doc_ID}}{double. HRAF document ID.}
#'   \item{\code{doc_field_date}}{double. Date of field work from HRAF.}
#'   \item{\code{doc_coverage_date}}{double. Time period (year) document covers from HRAF.}
#'   \item{\code{doc_evaluation}}{double. Quality evaluation score of document from HRAF.}
#'   \item{\code{author_ID}}{double. Internally assigned author identification number.}
#'   \item{\code{evidence_prestige_for}}{double. The sum of evidence for the prestige model, e.g., the number of prestige-model variables coded '1' for the codesheet.}
#'   \item{\code{evidence_prestige_against}}{double. The sum of evidence against the prestige model, e.g., the number of prestige-model variables coded '-1' for the codesheet.}
#'   \item{\code{evidence_dom_for}}{double. The sum of evidence for the dominance model, e.g., the number of dominance-model variables coded '1' for the codesheet.}
#'   \item{\code{evidence_dom_against}}{double. The sum of evidence against the dominance model, e.g., the number of dominance-model variables coded '-1' for the codesheet.}
#'   \item{\code{evidence_neel_for}}{double. The sum of evidence for the neural capital and reproductive skew model, e.g., the number of neural capital and reproductive skew-model variables coded '1' for the codesheet.}
#'   \item{\code{evidence_neel_against}}{double. The sum of evidence against the neural capital and reproductive skew model, e.g., the number of neural capital and reproductive skew-model variables coded '-1' for the codesheet.}
#'   \item{\code{evidence_hooper_for}}{double. The sum of evidence for the collective action model, e.g., the number of hooper-model variables coded '1' for the codesheet.}
#'   \item{\code{evidence_hooper_against}}{double. The sum of evidence against the collective action model, e.g., the number of collective action-model variables coded '-1' for the codesheet.}
#'   \item{\code{subsistence2}}{integer. Recoded HRAF subsistence classification with the value lables of: “hunter-gatherers”, “pastoralists”, “horticulturalists”, “agriculturalists”, and “other”}
#'   \item{\code{region2}}{integer. SCCS region classification using the following value lables: "Africa", "Circum-Mediterranean", "East Eurasia", "Insular Pacific", "North America", "South America"}
#'   \item{\code{dom_for}}{double. The number of dominance model variables providing evidence for from the codesheet.}
#'   \item{\code{dom_against}}{double. The number of dominance model variables evidence against from the codesheet.}
#'   \item{\code{dom_none}}{double. The number of dominance model variables providing no evidence from the codesheet.}
#'   \item{\code{dom_sum}}{double. The number of dominance model variables that provide any evidence from that codesheet.}
#'   \item{\code{prestige_for}}{double. The number of prestige model variables providing evidence for from the codesheet.}
#'   \item{\code{prestige_none}}{double. The number of prestige model variables providing no evidence from the codesheet.}
#'   \item{\code{prestige_sum}}{double. The number of prestige model variables that provide any evidence from that codesheet.}
#'   \item{\code{prestige_against}}{double. The number of prestige model variables evidence for from the codesheet.}
#'   \item{\code{neel_for}}{double. The number of neural capital and reproductive skew model variables providing evidence for from the codesheet.}
#'   \item{\code{neel_none}}{double. The number of neural capital and reproductive skew model variables providing no evidence from the codesheet.}
#'   \item{\code{neel_sum}}{double. The number of neural capital and reproductive skew model variables that provide any evidence from that codesheet.}
#'   \item{\code{neel_against}}{double. The number of neural capital and reproductive skew model variables evidence against from the codesheet.}
#'   \item{\code{hooper_for}}{double. The number of collective action model variables providing evidence for from the codesheet.}
#'   \item{\code{hooper_none}}{double. The number of collective action model variables providing no evidence from the codesheet.}
#'   \item{\code{hooper_sum}}{double. The number of collective action model variables that provide any evidence from that codesheet.}
#'   \item{\code{hooper_against}}{double. The number of collective action model variables evidence against from the codesheet.}
#'   \item{\code{neel_totals}}{double. The sum of all neural capital and reproductive skew model variables from that codesheet, e.g., '1's + '-1's.}
#'   \item{\code{hooper_totals}}{double. The sum of all collective action model variables from that codesheet, e.g., '1's + '-1's.}
#'   \item{\code{dom_totals}}{double. The sum of all dominance model variables from that codesheet, e.g., '1's + '-1's.}
#'   \item{\code{prest_totals}}{double. The sum of all prestige model variables from that codesheet, e.g., '1's + '-1's.}
#' }
#' @source \url{http://www.ehrafsite.info/}
"leader_text_original"

#' @title Researcher-coded text-level data from HRAF variables: Study 1, Garfield, Hubbard, & Hagen (2019). See text: https://link.springer.com/article/10.1007/s12110-019-09338-4
#' @description 1000 ethnographic texts coded as evidence for or against on variables from three theories of leadership: the dominance-prestige model, the collective action model, and the neural capital and reproductive skew model.
#' @format A data frame with 1000 rows and 85 variables:
#' \describe{
#'   \item{\code{cs_ID}}{integer. Internally assigned code sheet ID.}
#'   \item{\code{cs_textrec_ID}}{double. Internally assigned text record ID. In some cases one text record produced multiple code sheets.}
#'   \item{\code{text_type}}{integer. Classifying text type as: Cultural model, Case, or Both}
#'   \item{\code{c_culture_code}}{integer. OWC Culture code from eHRAF.}
#'   \item{\code{c_name}}{integer. HRAF culture name.}
#'   \item{\code{c_region}}{integer. HRAF culture region.}
#'   \item{\code{c_subregion}}{integer. HRAF sub-region.}
#'   \item{\code{c_subsistence_type}}{integer. HRAF subsistence type classification.}
#'   \item{\code{c_subsistence_code}}{integer. Numeric code assigned to HRAF subsistence classification.}
#'   \item{\code{demo_sex}}{integer. Sex of the leader described coded as male, female, or both.}
#'   \item{\code{dom_aggression}}{double. Does the leader use coercive control, aggression, or threats of violence? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{dom_assert.authority}}{double. Does the leader asserts authority over unwilling others, or have power over followers? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against.}
#'   \item{\code{dom_avoid.dom}}{double. Does the leader avoid being controlled by others? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{dom_fear}}{double. Does the leader instill fear in followers? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{dom_fighting}}{double. Does the leader demonstrate, or is known for superior fighting ability? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{dom_personality}}{double. Does the leader have a forceful or dominant personality? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{dom_reputation}}{double. Does the leader's reputation lead followers to be submissive? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{dom_strong}}{double. Is the leader seen as physically stronger than most followers? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{hooper_performance}}{double. Does leader functions to increase performance and group coordination in collective action through supervision? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{hooper_sanction.freeriders}}{double. Does the leader sanction against free-riding in collective activities? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{hooper_payoff}}{double. Does the leader receive a share of productivity from collective activities? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{hooper_group.size}}{double. Does leadership emerges in response to group size in collective activities? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{hooper_coop.activities}}{double. Do followers prefer a leader in large, otherwise egalitarian, groups during cooperative activities? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{neel_better.mates}}{double. Does the leader have higher quality mates relative to followers? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{neel_big.family}}{double. Does the leader have a larger (nuclear) family size relative to followers? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{neel_intelligence}}{double. Does the leader have high intelligence, above average knowledge, high cognitive abilities? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{neel_polygynous}}{double. Is the leader polygynous? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{prestige_counsel}}{double. Does the leader provide valued opinions, or is sought out for counsel? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{prestige_emulated}}{double. Do followers emulate the leader? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{prestige_expertise}}{double. Does the leader demonstrate expert knowledge, or have unique talents and abilities? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{prestige_family}}{double. Does the leader gain prestige or influence based on family level prestige? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{prestige_f.exp.success}}{double. Do followers have an expectation of success of the leader? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{prestige_likable}}{double. Is the leader likable? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{prestige_respected}}{double. Is the leader respected, admired, or held in high esteem? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{doc_ID}}{character HRAF document ID.}
#'   \item{\code{doc_field_date}}{character Date of field work from HRAF.}
#'   \item{\code{doc_coverage_date}}{character Time period (year) document covers from HRAF.}
#'   \item{\code{doc_evaluation}}{character Quality evaluation score of document from HRAF.}
#'   \item{\code{author_ID}}{double. Internally assigned author identification number.}
#'   \item{\code{evidence_prestige_for}}{double. The sum of evidence for the prestige model, e.g., the number of prestige-model variables coded '1' for the codesheet.}
#'   \item{\code{evidence_prestige_against}}{double. The sum of evidence against the prestige model, e.g., the number of prestige-model variables coded '-1' for the codesheet.}
#'   \item{\code{evidence_dom_for}}{double. The sum of evidence for the dominance model, e.g., the number of dominance-model variables coded '1' for the codesheet.}
#'   \item{\code{evidence_dom_against}}{double. The sum of evidence against the dominance model, e.g., the number of dominance-model variables coded '-1' for the codesheet.}
#'   \item{\code{evidence_neel_for}}{double. The sum of evidence for the neural capital and reproductive skew model, e.g., the number of neural capital and reproductive skew-model variables coded '1' for the codesheet.}
#'   \item{\code{evidence_neel_against}}{double. The sum of evidence against the neural capital and reproductive skew model, e.g., the number of neural capital and reproductive skew-model variables coded '-1' for the codesheet.}
#'   \item{\code{evidence_hooper_for}}{double. The sum of evidence for the collective action model, e.g., the number of collective action-model variables coded '1' for the codesheet.}
#'   \item{\code{evidence_hooper_against}}{double. The sum of evidence against the collective action model, e.g., the number of collective action-model variables coded '-1' for the codesheet.}
#'   \item{\code{subsistence}}{integer. Recoded HRAF subsistence classification with the value lables of: “hunter-gatherers”, “pastoralists”, “horticulturalists”, “agriculturalists”, and “other”}
#'   \item{\code{region}}{integer. SCCS region classification using the following value lables: "Africa", "Circum-Mediterranean", "East Eurasia", "Insular Pacific", "North America", "South America"}
#'   \item{\code{dom_for}}{double. The number of dominance model variables providing evidence for from the codesheet.}
#'   \item{\code{dom_against}}{double. The number of dominance model variables providing evidence against from the codesheet.}
#'   \item{\code{dom_none}}{double. The number of dominance model variables providing no evidence from the codesheet.}
#'   \item{\code{dom_sum}}{double. The number of dominance model variables that provide any evidence from that codesheet.}
#'   \item{\code{prestige_for}}{double. The number of prestige model variables providing evidence for from the codesheet.}
#'   \item{\code{prestige_none}}{double. The number of prestige model variables providing no evidence from the codesheet.}
#'   \item{\code{prestige_sum}}{double. The number of prestige model variables that provide any evidence from that codesheet.}
#'   \item{\code{prestige_against}}{double. The number of prestige model variables evidence against from the codesheet.}
#'   \item{\code{neel_for}}{double. The number of neural capital and reproductive skew model variables providing evidence for from the codesheet.}
#'   \item{\code{neel_none}}{double. The number of neural capital and reproductive skew model variables providing no evidence from the codesheet.}
#'   \item{\code{neel_sum}}{double. The number of neural capital and reproductive skew model variables that provide any evidence from that codesheet.}
#'   \item{\code{neel_against}}{double. The number of neural capital and reproductive skew model variables evidence against from the codesheet.}
#'   \item{\code{hooper_none}}{double. The number of collective action model variables providing evidence for from the codesheet.}
#'   \item{\code{hooper_none}}{double. The number of collective action model variables providing no evidence from the codesheet.}
#'   \item{\code{hooper_sum}}{double. The number of collective action model variables that provide any evidence from that codesheet.}
#'   \item{\code{hooper_against}}{double. The number of collective action model variables evidence against from the codesheet.}
#'   \item{\code{neel_totals}}{double. The sum of all neural capital and reproductive skew model variables from that codesheet, e.g., '1's + '-1's.}
#'   \item{\code{hooper_totals}}{double. The sum of all collective action model variables from that codesheet, e.g., '1's + '-1's.}
#'   \item{\code{dom_totals}}{double. The sum of all dominance model variables from that codesheet, e.g., '1's + '-1's.}
#'   \item{\code{prest_totals}}{double. The sum of all prestige model variables from that codesheet, e.g., '1's + '-1's.}
#'   \item{\code{dom_anti_aggression}}{double. DESCR.}
#'   \item{\code{dom_no_coercive_authority}}{double. DESCR.}
#'   \item{\code{dom_non_dominant_personality}}{double. DESCR.}
#'   \item{\code{hooper_no_sanctioning}{double. The leader does not sanction against free-riding in collective activities.}
#'   \item{\code{hooper_leaderless_large_group}{double. Followers do not prefer a leader in large, egalitarian groups during cooperative activities.}
#'   \item{\code{hooper_egalitarian_large_group}{double. Leadership is absent among large cooperative groups.}
#'   \item{\code{prestige_no_family_prestige}}{double. The leader does not gain prestige or influence based on family level prestige.}
#'   \item{\code{prestige_unlikeable}}{double. The leader is unlikable.}
#'   \item{\code{prestige_not_respected}}{double. The leader is not respected, admired, or held in high esteem.}
#'   \item{\code{subsistence}{charachter. Recoded HRAF subsistence classification with the value lables of: “hunter-gatherers”, “pastoralists”, “horticulturalists”, “agriculturalists”, and “other”.}
#'   \item{\code{region}{charachter. SCCS region classification using the following value lables: "Africa", "Circum-Mediterranean", "East Eurasia", "Insular Pacific", "North America", "South America"}
#'   \item{\code{document_d_ID}{charachter. HRAF document ID.}
#'   \item{\code{t_split_record}{logical. Was the raw text coded twice, due to distinct or multiple discussions of leadership?}
#'   \item{\code{t_split_record_info}{charachter. If t_split_record==TRUE, this information specified how the codesheet was coded, i.e., which discussion of leadership is coded here.}
#'   \item{\code{raw_text}{charachter. The raw text from the HRAF.}
#' }
#' @source \url{http://www.ehrafsite.info/}
"leader_text"

#' @title Researcher-coded text-level data from HRAF variables: Study 2, Garfield, Syme, & Hagen (2020)
#' @description Coded variables from the leader_text_original data frame on the qualities, functions of leaders and costs and benefits for leaders and followers.
#' @format A data frame with 1212 rows and 111 variables:
#' \describe{
#'   \item{\code{cs_ID}}{integer Internally assigned code sheet ID.}
#'   \item{\code{cs_textrec_ID}}{double Internally assigned text record ID. In some cases one text record produced multiple code sheets.}
#'   \item{\code{follower.benefits_fitness}}{double Receives a non-mating fitness benefit such as benefits to kin, physical/health benefits (non-food, non-resources).}
#'   \item{\code{follower.benefits_mating}}{double Receives a benefit in the form of mating opportunities, such as more partners, greater access to mates, higher quality mates, or is more attractive due to leader/follower position.}
#'   \item{\code{follower.benefits_other}}{double Receives a non-material benefit not described by other variables.}
#'   \item{\code{follower.benefits_reduced.risk.harm.conflict}}{double Receives a benefit in the form of decreased risk of physical harm or protection from physical conflict.}
#'   \item{\code{follower.benefits_resource_food}}{double Receives a benefit in the form of food or access to food resources.}
#'   \item{\code{follower.benefits_resource_other}}{double Receives a benefit in the form of material (non-food) resources, economic exchange/capital, or wealth.}
#'   \item{\code{follower.benefits_social.services}}{double Receives a benefit in the form of social services such as labor, servants, subordinates, allegiance due to social position or proximity, or positive social interactions.}
#'   \item{\code{follower.benefits_social.status.reputation}}{double Receives a benefit in the form of special social status, behavioral deference, priority of access to contested resources due to social standing, excepted from social norms, or social markers of distinction.}
#'   \item{\code{follower.benefits_territory}}{double Receives a benefit in the form of access to territory, geography, or space.}
#'   \item{\code{follower.costs_fitness}}{double Pays a non-mating fitness cost such as costs to kin, physical/health costs (non-food, non-resources).}
#'   \item{\code{follower.costs_increased.risk.harm.conflict}}{double Pays a cost in the form of increased risk of physical harm or is put at risk from physical conflict.}
#'   \item{\code{follower.costs_mating}}{double Pays a cost in the form of mating opportunities, such as less partners, reduced access to mates, lower quality mates, or is less attractive due to leader/follower position.}
#'   \item{\code{follower.costs_other}}{double Pays a non-material cost not described by other variables.}
#'   \item{\code{follower.costs_resource_food}}{double Pays a cost to others in the form of food or reduced access to food resources.}
#'   \item{\code{follower.costs_resource_other}}{double Pays a cost in the form of material (non-food) resources, economic exchange/capital, or loss of wealth.}
#'   \item{\code{follower.costs_social.services}}{double Pays a cost to others in the form of social services such as labor, service/serves as a servant, allegiance to superior social position or proximity, or negative social interactions.}
#'   \item{\code{follower.costs_social.status}}{double Pays a cost in the form of loss of social status, behavioral deference, lacks priority of access to contested resources due to social standing, not excepted from social norms, lacks social markers of distinction or displays social markers of low status.}
#'   \item{\code{follower.costs_territory}}{double Pays a cost in the form of reduced access to territory, geography, or space.}
#'   \item{\code{function_bestow.mate}}{double The leader organizes arranged marriages, or distributes access to mates to followers.}
#'   \item{\code{function_organize.cooperation}}{double The leader organizes collective activities and controls labor in the group (i.e., takes an administrative role in cooperation).}
#'   \item{\code{function_political.appointments}}{double The leader assigns or appoints others to sociopolitical positions.}
#'   \item{\code{function_resolve.conflcit}}{double The leader resolves disputes between followers or is sought out to resolve conflict.}
#'   \item{\code{functions_construction.infrastructure}}{double The leader makes decisions or is in charge of local construction/infrastructure and maintenance of infostructure.}
#'   \item{\code{functions_context}}{character The context of the coded leader functions coded as: between-group, within-group, both, or unkown.}
#'   \item{\code{functions_control.calendar}}{double The leader determines the calendrical system.}
#'   \item{\code{functions_control.economics}}{double The leader controls economic exchange or economic systems/production within the group.}
#'   \item{\code{functions_control.immigration}}{double The leader decides who can move into the group.}
#'   \item{\code{functions_council.member}}{double The leader is a member of a council that serves community interests or makes community decisions.}
#'   \item{\code{functions_distribute.resources}}{double The leader is in charge of distributing resources (food and non-food) to followers (independent of production).}
#'   \item{\code{functions_group.determination}}{double The leader is responsible for maintaining (explicitly or implicitly) group identity; followers form distinct groups based on their affiliation with a specific leader; the leader functions to maintain group cohesiveness.}
#'   \item{\code{functions_group.representative}}{double The leader represents the group to an outgroup (or possibly to sub-groups in larger societies); can include travel to visit and maintain ties with other communities.}
#'   \item{\code{functions_hospitality}}{double The leader hosts guests and entertain individuals in specific contexts.}
#'   \item{\code{functions_medicinal}}{double The leader provides medicinal or healing services to heal physical or mental illness or injury.}
#'   \item{\code{functions_military.command}}{double The leader participates and leads in military activities, directly or indirectly.}
#'   \item{\code{functions_moral.authority}}{double The leader instructs on or serves as a model to followers for proper behavior; the leader sets standards of appropriate behavior.}
#'   \item{\code{functions_new.settlement}}{double The leader decides when and where to move to a new settlement; controls/influences group movement.}
#'   \item{\code{functions_policymaking}}{double The leader makes rules and decisions that group members must follow, making executive decisions; includes creating and shaping social norms.}
#'   \item{\code{functions_prosocial.investment}}{double The leader’s behavior benefits group members; the leader’s actions produce positive outcomes for the group.}
#'   \item{\code{functions_protection}}{double The leader provides protection to followers, directly or indirectly, including from physical threats, spiritual threats, within-group protection from aggression, between-group protection from invaders/attackers (non- subsistence related).}
#'   \item{\code{functions_provide.counsel}}{double The leader advises, councils others, or provides input influencing outcomes for followers (not including conflict resolution).}
#'   \item{\code{functions_provide.subsistence}}{double The leader directly produces subsistence surpluses for followers, such as through hunting, growing food, collecting food for collective consumption (independent of distribution).}
#'   \item{\code{functions_punishment}}{double The leader sanctions or punishes transgressors of social rules/norms or free- riders.}
#'   \item{\code{functions_ritual}}{double The leader performs ritual or religious functions or services for the group.}
#'   \item{\code{functions_serve.leader}}{double The leader serves a higher ranked leader in some capacity or executes orders from a superior.}
#'   \item{\code{functions_social.functions}}{double The leader provides a social function (non- punishment), such as facilitating marriages and brokering economic exchange, organizing social activities, or managing group-level social events/problems.}
#'   \item{\code{functions_strategic.planning}}{double The leader makes decisions/plans for the future relying on their knowledge and intellect in order to optimize outcomes for the group.}
#'   \item{\code{group.structure.coded}}{character The type of group in which the leader has influence, coded as: age-group, domestic group, economic group, kin group, labor group, local group, military group, performance group, political group (community), political group (supracommunity), religeous group, state-level group, subsistence group.}
#'   \item{\code{leader.benefits_fitness}}{double Receives a non-mating fitness benefit such as benefits to kin, physical/health benefits (non-food, non-resources).}
#'   \item{\code{leader.benefits_mating}}{double Receives a benefit in the form of mating opportunities, such as more partners, greater access to mates, higher quality mates, or is more attractive due to leader/follower position.}
#'   \item{\code{leader.benefits_other}}{double Receives a non-material benefit not described by other variables.}
#'   \item{\code{leader.benefits_reduced.risk.harm.conflict}}{double Receives a benefit in the form of decreased risk of physical harm or protection from physical conflict.}
#'   \item{\code{leader.benefits_resource_food}}{double Receives a benefit in the form of food or access to food resources.}
#'   \item{\code{leader.benefits_resource_other}}{double Receives a benefit in the form of material (non-food) resources, economic exchange/capital, or wealth.}
#'   \item{\code{leader.benefits_social.services}}{double Receives a benefit in the form of social services such as labor, servants, subordinates, allegiance due to social position or proximity, or positive social interactions.}
#'   \item{\code{leader.benefits_social.status.reputation}}{double Receives a benefit in the form of special social status, behavioral deference, priority of access to contested resources due to social standing, excepted from social norms, or social markers of distinction.}
#'   \item{\code{leader.benefits_territory}}{double Receives a benefit in the form of access to territory, geography, or space.}
#'   \item{\code{leader.costs_fitness.costs}}{double Pays a non-mating fitness cost such as costs to kin, physical/health costs (non-food, non-resources).}
#'   \item{\code{leader.costs_increased.risk.harm.conflict}}{double Pays a cost in the form of increased risk of physical harm or is put at risk from physical conflict.}
#'   \item{\code{leader.costs_other}}{double Pays a non-material cost not described by other variables.}
#'   \item{\code{leader.costs_resource_food.cost}}{double Pays a cost to others in the form of food or reduced access to food resources.}
#'   \item{\code{leader.costs_resources_other.cost}}{double Pays a cost in the form of material (non-food) resources, economic exchange/capital, or loss of wealth.}
#'   \item{\code{leader.costs_social.status}}{double Pays a cost in the form of loss of social status, behavioral deference, lacks priority of access to contested resources due to social standing, not excepted from social norms, lacks social markers of distinction or displays social markers of low status.}
#'   \item{\code{leader.costs_territory.cost}}{double Pays a cost in the form of reduced access to territory, geography, or space.}
#'   \item{\code{leader.costs.mating.cost}}{double Pays a cost in the form of mating opportunities, such as less partners, reduced access to mates, lower quality mates, or is less attractive due to leader/follower position.}
#'   \item{\code{leader.costs.social.services}}{double Pays a cost to others in the form of social services such as labor, service/serves as a servant, allegiance to superior social position or proximity, or negative social interactions.}
#'   \item{\code{qualities_artistic.performance}}{double The leader is an artistic performer for followers, e.g. song, dance, other artistic performances.}
#'   \item{\code{qualities_drug.consumption}}{double The leader is known for, or is expected to be able to consume high levels of drugs (alcohol, tobacco, etc.), is expected to have a high tolerance, or maintain superior cognitive functioning under the influence relative to followers.}
#'   \item{\code{qualities_exp.accomplished}}{double The leader has increased/specialized expertise relative to followers or has a reputation for successful and notable accomplishments.}
#'   \item{\code{qualities_generous}}{double The leader displays or has a reputation for generosity.}
#'   \item{\code{qualities_high.status}}{double The leader is described as having high social status, prestige, or held in high esteem.}
#'   \item{\code{qualities_wealthy}}{double The leader is wealthier than followers including cash, material or other economic wealth measures.}
#'   \item{\code{qualities_age}}{double The leader is an elder or is older than most followers.}
#'   \item{\code{qualities_aggressive}}{double The leader demonstrates use of physical or verbal aggression or has a high propensity/reputation for aggressiveness.}
#'   \item{\code{qualities_ambition}}{double The leader is described as ambitious, determined, enthusiastic, or highly motivated.}
#'   \item{\code{qualities_attractive}}{double The leader is described/perceived as being physically/sexually attractive.}
#'   \item{\code{qualities_bravery}}{double The leader is known for being courageous, brave, or fearless.}
#'   \item{\code{qualities_charisma}}{double The leader is described as charismatic, able to motivate followers with their personality.}
#'   \item{\code{qualities_coercive.authority}}{double The leader has strong authority over followers and social norms either promote or accept this authority; or, followers are unable to resist or depose the authority of the leader.}
#'   \item{\code{qualities_confident}}{double The leader is confident, assured, or assertive.}
#'   \item{\code{qualities_culturally.conservative}}{double The leader values tradition over new/outside ideas.}
#'   \item{\code{qualities_culturally.progressive}}{double The leader is open to new/outside ideas and might value these ideas over tradition.}
#'   \item{\code{qualities_decisive}}{double The leader makes decisions swiftly or has a reputation for good decision-making abilities.}
#'   \item{\code{qualities_fairness}}{double The leader demonstrates fairness to all group members or has a reputation for fairness.}
#'   \item{\code{qualities_favorable.personality}}{double The leader is described as having an ideal personality for the required context.}
#'   \item{\code{qualities_feared}}{double The leader is feared by others or has a reputation for being feared.}
#'   \item{\code{qualities_high.quality.spouse}}{double The leader is married to a high status or high quality spouse(s).}
#'   \item{\code{qualities_honest}}{double The leader has a reputation for honesty.}
#'   \item{\code{qualities_humble}}{double The leader is modest in estimating or signaling their own abilities or qualities; has a reputation for being humble.}
#'   \item{\code{qualities_industriousness}}{double The leader is hardworking and productive.}
#'   \item{\code{qualities_ingroup.member}}{double The leader is a member of the local group in residence and ethnicity with such membership explicitly mentioned as preferable or important.}
#'   \item{\code{qualities_innovative}}{double The leader is described as being innovative or developing novel solutions/proposals.}
#'   \item{\code{qualities_interpersonal.skills}}{double The leader works well with people and can effectively manages social relationships.}
#'   \item{\code{qualities_killer}}{double The leader has killed someone.}
#'   \item{\code{qualities_knowlageable.intellect}}{double The leader is known for superior intelligence, knowledge, cognitive functioning, specialized education, wisdom, or esoteric knowledge.}
#'   \item{\code{qualities_loyalty}}{double The leader demonstrates loyalty to the in- group or important members of the in-group.}
#'   \item{\code{qualities_many.children}}{double The leader has many offspring.}
#'   \item{\code{qualities_oratory.skill}}{double The leader is a good public speaker, eloquent, demonstrates high oratory skill, or forceful/persuasive speaking abilities.}
#'   \item{\code{qualities_physical.health}}{double The leader is physically healthy.}
#'   \item{\code{qualities_physically.strong}}{double The leader is physically strong, large in size, or physically formidable.}
#'   \item{\code{qualities_polygynous}}{double The leader is married polygynous or has multiple current mates/sexual partners.}
#'   \item{\code{qualities_proper.behavior}}{double The leader demonstrates proper behavior for specific contexts or that is particularly valued.}
#'   \item{\code{qualities_prosocial}}{double The leader is concerned with group welfare or has a reputation for group-wide altruism and selflessness.}
#'   \item{\code{qualities_social.contacts}}{double The leader has a high number of social contacts or allies.}
#'   \item{\code{qualities_strategic.nepotism}}{double The leader or the leadership system strategically provides benefits to kin/family members. Social influence/leadership is partially determined or mediated via kinship or inheritance.}
#'   \item{\code{qualities_strategic.planner}}{double The leader makes decisions/plans for the future relying on their knowledge and intellect in order to optimize outcomes for the group; considers outcomes strategically.}
#'   \item{\code{qualities_supernatural}}{double The leader is perceived to possess supernatural qualities/abilities.}
#'   \item{\code{qualities_xenophobic}}{double The leader is described as fearing and mistrusting outsiders.}
#'   \item{\code{demo_sex}}{character Sex of the leader described coded as male, female, or both.}
#'   \item{\code{group.structure2}}{character Recoded group structures as follows: economic group, kin group, military group, political group (community), political group (supracommunity), religious group, residential subgroup}
#'}
#' @source \url{https://ehrafworldcultures.yale.edu/ehrafe/}
"leader_text2"

#' @title Culture level data from HRAF coded variables
#' @description Aggregate measures from leader_text coding and other culture-level measures from HRAF and SCCS sources.
#' @format A data frame with 59 rows and 40 variables:
#' \describe{
#'   \item{\code{c_culture_code}}{character OWC Culture code from eHRAF.}
#'   \item{\code{Name}}{character HRAF culture name. }
#'   \item{\code{Region}}{character SCCS region classification.}
#'   \item{\code{c_name}}{character HRAF culture name.}
#'   \item{\code{Location}}{character Nation state which culture is located within, from the SCCS}
#'   \item{\code{V158.1}}{double SCCS cultural complexity variable, raw.}
#'   \item{\code{c_cultural_complexity}}{double SCCS cultural complexity variable, with matched.}
#'   \item{\code{c_latitude}}{double Latitude of culture location based on SCCS and HRAF information.}
#'   \item{\code{c_longitude}}{double Longitude of culture location based on SCCS and HRAF information.}
#'   \item{\code{c_region}}{character HRAF region classification.}
#'   \item{\code{c_subregion}}{character HRAF sub-region classification.}
#'   \item{\code{c_subsistence_code}}{integer HRAF subsistence classification, number.}
#'   \item{\code{c_subsistence_type}}{character HRAF subsistence classification.}
#'   \item{\code{extract_count}}{integer Number of text (i.e., paragraphs/extracts) associated with culture.}
#'   \item{\code{neel_total_cell_count}}{integer Total number of cells associated with the neural capital and reproductive skew model in the text by variable matrix for each culture.}
#'   \item{\code{neel_total_for}}{double Total number of cells providing evidence for the neural capital and reproductive skew model in the text by variable matrix for each culture.}
#'   \item{\code{neel_total_none}}{double Total number of cells associated providing no evidence for the neural capital and reproductive skew model in the text by variable matrix for each culture.}
#'   \item{\code{neel_total_against}}{double Total number of cells associated providing evidence against the neural capital and reproductive skew model in the text by variable matrix for each culture.}
#'   \item{\code{prest_total_cell_count}}{integer Total number of cells associated with the prestige model in the text by variable matrix for each culture.}
#'   \item{\code{prest_total_for}}{double Total number of cells providing evidence for the prestige model in the text by variable matrix for each culture.}
#'   \item{\code{prest_total_none}}{double Total number of cells providing no evidence for the prestige model in the text by variable matrix for each culture.}
#'   \item{\code{prest_total_against}}{double Total number of cells providing evidence against the prestige model in the text by variable matrix for each culture.}
#'   \item{\code{dom_total_cell_count}}{integer Total number of cells associated with the dominance model in the text by variable matrix for each culture.}
#'   \item{\code{dom_total_for}}{double Total number of cells providing evidence for the dominance model in the text by variable matrix for each culture.}
#'   \item{\code{dom_total_none}}{double Total number of cells providing no evidence for the dominance model in the text by variable matrix for each culture.}
#'   \item{\code{dom_total_against}}{double Total number of cells providing evidence against the dominance model in the text by variable matrix for each culture.}
#'   \item{\code{hooper_total_cell_count}}{integer Total number of cells associated with the collective action model in the text by variable matrix for each culture.}
#'   \item{\code{hooper_total_for}}{double Total number of cells providing evidence for the collective action model in the text by variable matrix for each culture.}
#'   \item{\code{hooper_total_none}}{double Total number of cells providing no evidence for the collective action model in the text by variable matrix for each culture.}
#'   \item{\code{hooper_total_against}}{double Total number of cells providing evidence against the collective action model in the text by variable matrix for each culture.}
#'   \item{\code{neel_cult_score}}{double Calculated culture score for the neural capital and reproductive skew model, i.e., neel_total_for / neel_total_cell_count, for each culture.}
#'   \item{\code{prest_cult_score}}{double Calculated culture score for the prestige model, i.e., prest_total_for / prest_total_cell_count, for each culture.}
#'   \item{\code{dom_cult_score}}{double Calculated culture score for the dominance model, i.e., dom_total_for / dom_total_cell_count, for each culture.}
#'   \item{\code{hooper_cult_score}}{double Calculated culture score for the collective action model, i.e., hooper_total_for / hooper_total_cell_count, for each culture.}
#'   \item{\code{subsistence}}{character Recoded HRAF subsistence classification: agriculturalists, horticulturalists, hunter gatherers, mixed, pastoralists}
#'   \item{\code{region}}{character Recoded HRAF region classification: Africa, Circum-Mediterranean, East Eurasia, Insular Pacific, North America, South America}
#'   \item{\code{settlement_fixity}}{character SCCS sdttlement fixity variable}
#'   \item{\code{com_size}}{character SCCS community size variables}
#'   \item{\code{pop_density}}{character SCCS population density variable}
#'   \item{\code{documents}}{integer Number of HRAF documents which produced the sample of texts.}
#'}
#' @source \url{https://ehrafworldcultures.yale.edu/ehrafe/}
"leader_cult"


#' @title Text records
#' @description The raw ethnographic paragraphs returned by eHRAF from search strategy used to develop leader_text_original, leader_text, and leader_text2.
#' @format A data frame with 1212 rows and 5 variables:
#' \describe{
#'   \item{\code{document_d_ID}}{character HRAF document ID.}
#'   \item{\code{cs_textrec_ID}}{double Internally asigned text record ID.}
#'   \item{\code{t_split_record}}{logical Identifing text records that were "split" due to multiple/distinct discussion of leadership and produced two code sheets.}
#'   \item{\code{t_split_record_info}}{character Information on which discussion of leadership was coded in linked codesheets.}
#'   \item{\code{raw_text}}{character Raw ethnographic paragraph from eHRAF that was coded in leader_text and leader_text2 dataframes.}
#'}
#' @source \url{https://ehrafworldcultures.yale.edu/ehrafe/}
"text_records"


#' @title Documents data
#' @description Data on HRAF documents associated with text records.
#' @format A data frame with 321 rows and 12 variables:
#' \describe{
#'   \item{\code{d_author_identification}}{character Internally assigned author ID. First author only.}
#'   \item{\code{d_coverage_date}}{character Period of time the document covers.}
#'   \item{\code{d_coverage_place}}{character Regions associated with the document content.}
#'   \item{\code{d_culture}}{character HRAF culture name associated with document.}
#'   \item{\code{d_document_type}}{character HRAF document type classification.}
#'   \item{\code{d_field_date}}{character Period of time field work occured associated with document.}
#'   \item{\code{d_ID}}{character HRAF document ID.}
#'   \item{\code{d_notes}}{character Document notes.}
#'   \item{\code{d_publication date}}{character Date of document publication.}
#'   \item{\code{d_publisher}}{character Document publisher.}
#'   \item{\code{d_source_evaluation}}{character HRAF document quality evaluation.}
#'   \item{\code{d_title}}{character Document title.}
#'}
#' @source \url{https://hraf.yale.edu/document-collections-in-ehraf/}
"documents"

#' @title Authorship data
#' @description Data on authors and authorship associated with "documents" data frame.
#' @format A data frame with 357 rows and 7 variables:
#' \describe{
#'   \item{\code{author_ID}}{character Internally assigned author ID, unique to each author.}
#'   \item{\code{document_ID}}{character HRAF document ID}
#'   \item{\code{authorship_ID}}{double Internally assigned authorship ID, unique to each case of authorship.}
#'   \item{\code{authorship_order}}{character The authorship order, i.e., sole, first, second, third, fourth.}
#'   \item{\code{author_first_name}}{character Author's first name or initials.}
#'   \item{\code{author_gender}}{character Author's gender coded as male, female, or unkown.}
#'   \item{\code{author_last_name}}{character Author's last name. }
#'}
#' @source \url{http://somewhere.important.com/}
"authorship"


