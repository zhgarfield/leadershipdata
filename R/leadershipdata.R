#' Text-level data from HRAF variables
#'
#' 1200+ ethnographic text coded as evidence for, against, no evidence on variables from theories of leadership.
#'
#' @format A data frame with 1212 rows and 51 variables:
#' \describe{
#'   \item{\code{cs_ID}}{integer. DESCRIPTION.}
#'   \item{\code{cs_textrec_ID}}{double. DESCRIPTION.}
#'   \item{\code{text_type}}{integer. DESCRIPTION.}
#'   \item{\code{c_culture_code}}{integer. DESCRIPTION.}
#'   \item{\code{c_name}}{integer. DESCRIPTION.}
#'   \item{\code{c_region}}{integer. DESCRIPTION.}
#'   \item{\code{c_subregion}}{integer. DESCRIPTION.}
#'   \item{\code{c_subsistence_type}}{integer. DESCRIPTION.}
#'   \item{\code{c_subsistence_code}}{integer. DESCRIPTION.}
#'   \item{\code{demo_sex}}{integer. DESCRIPTION.}
#'   \item{\code{dom_aggression}}{double. DESCRIPTION.}
#'   \item{\code{dom_assert.authority}}{double. DESCRIPTION.}
#'   \item{\code{dom_avoid.dom}}{double. DESCRIPTION.}
#'   \item{\code{dom_fear}}{double. DESCRIPTION.}
#'   \item{\code{dom_fighting}}{double. DESCRIPTION.}
#'   \item{\code{dom_personality}}{double. DESCRIPTION.}
#'   \item{\code{dom_reputation}}{double. DESCRIPTION.}
#'   \item{\code{dom_strong}}{double. DESCRIPTION.}
#'   \item{\code{neel_better.mates}}{double. DESCRIPTION.}
#'   \item{\code{neel_big.family}}{double. DESCRIPTION.}
#'   \item{\code{neel_intelligence}}{double. DESCRIPTION.}
#'   \item{\code{neel_polygynous}}{double. DESCRIPTION.}
#'   \item{\code{prestige_counsel}}{double. DESCRIPTION.}
#'   \item{\code{prestige_emulated}}{double. DESCRIPTION.}
#'   \item{\code{prestige_expertise}}{double. DESCRIPTION.}
#'   \item{\code{prestige_family}}{double. DESCRIPTION.}
#'   \item{\code{prestige_f.exp.success}}{double. DESCRIPTION.}
#'   \item{\code{prestige_likable}}{double. DESCRIPTION.}
#'   \item{\code{prestige_respected}}{double. DESCRIPTION.}
#'   \item{\code{evidence_prestige_for}}{double. DESCRIPTION.}
#'   \item{\code{evidence_prestige_against}}{double. DESCRIPTION.}
#'   \item{\code{evidence_dom_for}}{double. DESCRIPTION.}
#'   \item{\code{evidence_dom_against}}{double. DESCRIPTION.}
#'   \item{\code{evidence_neel_for}}{double. DESCRIPTION.}
#'   \item{\code{evidence_neel_against}}{double. DESCRIPTION.}
#'   \item{\code{subsistence2}}{integer. DESCRIPTION.}
#'   \item{\code{region2}}{integer. DESCRIPTION.}
#'   \item{\code{dom_for}}{double. DESCRIPTION.}
#'   \item{\code{dom_against}}{double. DESCRIPTION.}
#'   \item{\code{dom_none}}{double. DESCRIPTION.}
#'   \item{\code{dom_sum}}{double. DESCRIPTION.}
#'   \item{\code{prestige_for}}{double. DESCRIPTION.}
#'   \item{\code{prestige_against}}{double. DESCRIPTION.}
#'   \item{\code{prestige_none}}{double. DESCRIPTION.}
#'   \item{\code{prestige_sum}}{double. DESCRIPTION.}
#'   \item{\code{neel_for}}{double. DESCRIPTION.}
#'   \item{\code{neel_against}}{double. DESCRIPTION.}
#'   \item{\code{neel_none}}{double. DESCRIPTION.}
#'   \item{\code{neel_sum}}{double. DESCRIPTION.}
#'   \item{\code{dom_totals}}{double. DESCRIPTION.}
#'   \item{\code{prest_totals}}{double. DESCRIPTION.}
#' }
#' @source \url{http://www.ehrafsite.info/}
"leader_text"

#' Culture-level data from HRAF variables
#'
#' A dataset containing the prices and other attributes of almost 54,000
#' diamonds.
#'
#' @format A data frame with 59 rows and 68 variables:
#' \describe{
#'   \item{\code{c_name}}{character. DESCRIPTION.}
#'   \item{\code{neel_better.mates_present}}{double. DESCRIPTION.}
#'   \item{\code{neel_big.family_present}}{double. DESCRIPTION.}
#'   \item{\code{neel_intelligence_present}}{double. DESCRIPTION.}
#'   \item{\code{neel_polygynous_present}}{double. DESCRIPTION.}
#'   \item{\code{prestige_counsel_present}}{double. DESCRIPTION.}
#'   \item{\code{prestige_emulated_present}}{double. DESCRIPTION.}
#'   \item{\code{prestige_expertise_present}}{double. DESCRIPTION.}
#'   \item{\code{prestige_family_present}}{double. DESCRIPTION.}
#'   \item{\code{prestige_f.exp.success_present}}{double. DESCRIPTION.}
#'   \item{\code{prestige_likable_present}}{double. DESCRIPTION.}
#'   \item{\code{prestige_respected_present}}{double. DESCRIPTION.}
#'   \item{\code{dom_aggression_present}}{double. DESCRIPTION.}
#'   \item{\code{dom_assert.authority_present}}{double. DESCRIPTION.}
#'   \item{\code{dom_avoid.dom_present}}{double. DESCRIPTION.}
#'   \item{\code{dom_fear_present}}{double. DESCRIPTION.}
#'   \item{\code{dom_fighting_present}}{double. DESCRIPTION.}
#'   \item{\code{dom_personality_present}}{double. DESCRIPTION.}
#'   \item{\code{dom_reputation_present}}{double. DESCRIPTION.}
#'   \item{\code{dom_strong_present}}{double. DESCRIPTION.}
#'   \item{\code{neel_better.mates_mean}}{double. DESCRIPTION.}
#'   \item{\code{neel_big.family_mean}}{double. DESCRIPTION.}
#'   \item{\code{neel_intelligence_mean}}{double. DESCRIPTION.}
#'   \item{\code{neel_polygynous_mean}}{double. DESCRIPTION.}
#'   \item{\code{prestige_counsel_mean}}{double. DESCRIPTION.}
#'   \item{\code{prestige_emulated_mean}}{double. DESCRIPTION.}
#'   \item{\code{prestige_expertise_mean}}{double. DESCRIPTION.}
#'   \item{\code{prestige_family_mean}}{double. DESCRIPTION.}
#'   \item{\code{prestige_f.exp.success_mean}}{double. DESCRIPTION.}
#'   \item{\code{prestige_likable_mean}}{double. DESCRIPTION.}
#'   \item{\code{prestige_respected_mean}}{double. DESCRIPTION.}
#'   \item{\code{dom_aggression_mean}}{double. DESCRIPTION.}
#'   \item{\code{dom_assert.authority_mean}}{double. DESCRIPTION.}
#'   \item{\code{dom_avoid.dom_mean}}{double. DESCRIPTION.}
#'   \item{\code{dom_fear_mean}}{double. DESCRIPTION.}
#'   \item{\code{dom_fighting_mean}}{double. DESCRIPTION.}
#'   \item{\code{dom_personality_mean}}{double. DESCRIPTION.}
#'   \item{\code{dom_reputation_mean}}{double. DESCRIPTION.}
#'   \item{\code{dom_strong_mean}}{double. DESCRIPTION.}
#'   \item{\code{c_culture_code}}{integer. DESCRIPTION.}
#'   \item{\code{Location}}{integer. DESCRIPTION.}
#'   \item{\code{Position}}{integer. DESCRIPTION.}
#'   \item{\code{c_cultural_complexity}}{integer. DESCRIPTION.}
#'   \item{\code{c_region}}{character. DESCRIPTION.}
#'   \item{\code{c_subregion}}{character. DESCRIPTION.}
#'   \item{\code{c_subsistence_code}}{integer. DESCRIPTION.}
#'   \item{\code{c_subsistence_type}}{character. DESCRIPTION.}
#'   \item{\code{extract_count}}{integer. DESCRIPTION.}
#'   \item{\code{neel_total_cell_count}}{integer. DESCRIPTION.}
#'   \item{\code{neel_total_for}}{double. DESCRIPTION.}
#'   \item{\code{neel_total_none}}{double. DESCRIPTION.}
#'   \item{\code{neel_total_against}}{double. DESCRIPTION.}
#'   \item{\code{prest_total_cell_count}}{integer. DESCRIPTION.}
#'   \item{\code{prest_total_for}}{double. DESCRIPTION.}
#'   \item{\code{prest_total_none}}{double. DESCRIPTION.}
#'   \item{\code{prest_total_against}}{double. DESCRIPTION.}
#'   \item{\code{dom_total_cell_count}}{integer. DESCRIPTION.}
#'   \item{\code{dom_total_for}}{double. DESCRIPTION.}
#'   \item{\code{dom_total_none}}{double. DESCRIPTION.}
#'   \item{\code{dom_total_against}}{double. DESCRIPTION.}
#'   \item{\code{subsistence2}}{integer. DESCRIPTION.}
#'   \item{\code{region2}}{character. DESCRIPTION.}
#'   \item{\code{settlement_fixity2}}{integer. DESCRIPTION.}
#'   \item{\code{com_size2}}{integer. DESCRIPTION.}
#'   \item{\code{pop_density2}}{integer. DESCRIPTION.}
#'   \item{\code{neel_cult_score}}{double. DESCRIPTION.}
#'   \item{\code{prest_cult_score}}{double. DESCRIPTION.}
#'   \item{\code{dom_cult_score}}{double. DESCRIPTION.}
#' }
"leader_cult"
