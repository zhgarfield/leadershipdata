#' Text-level data from HRAF variables
#'
#' 1200+ ethnographic text coded as evidence for, against, no evidence on variables from theories of leadership.
#'
#' @format A data frame with 1212 rows and 51 variables:
#' \describe{
#'   \item{\code{cs_ID}}{integer. Code sheet ID.}
#'   \item{\code{cs_textrec_ID}}{double. Text record ID. In some cases one text record produced multiple code sheets.}
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
#'   \item{\code{hooper_performance}}{double. asf? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{hooper_sanction.freeriders}}{double. asf? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{hooper_payoff}}{double. asf? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{hooper_group.size}}{double. asf? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{hooper_coop.activities}}{double. asf? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
#'   \item{\code{hooper_coop.activities}}{double. asf? Coded ‘1’ for evidence for, ‘0’ for no evidence, and ‘-1’ for evidence against. }
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
#'   \item{\code{doc_ID}}{double. asf.}
#'   \item{\code{doc_field_date}}{double. asf.}
#'   \item{\code{doc_coverage_date}}{double. asf.}
#'   \item{\code{doc_evaluation}}{double. asf.}
#'   \item{\code{doc_field_date}}{double. asf.}
#'   \item{\code{author_ID}}{double. asf.}
#'   \item{\code{evidence_prestige_for}}{double. The sum of evidence for the prestige model, e.g., the number of prestige-model variables coded '1' for the codesheet.}
#'   \item{\code{evidence_prestige_against}}{double. The sum of evidence against the prestige model, e.g., the number of prestige-model variables coded '-1' for the codesheet.}
#'   \item{\code{evidence_dom_for}}{double. The sum of evidence for the dominance model, e.g., the number of dominance-model variables coded '1' for the codesheet.}
#'   \item{\code{evidence_dom_against}}{double. The sum of evidence against the dominance model, e.g., the number of dominance-model variables coded '-1' for the codesheet.}
#'   \item{\code{evidence_neel_for}}{double. The sum of evidence for the neel model, e.g., the number of neel-model variables coded '1' for the codesheet.}
#'   \item{\code{evidence_neel_against}}{double. The sum of evidence against the neel model, e.g., the number of neel-model variables coded '-1' for the codesheet.}
#'   \item{\code{evidence_hooper_for}}{double. The sum of evidence for the Hooper model, e.g., the number of hooper-model variables coded '1' for the codesheet.}
#'   \item{\code{evidence_hooper_against}}{double. The sum of evidence against the Hooper model, e.g., the number of hooper-model variables coded '-1' for the codesheet.}
#'   \item{\code{subsistence}}{integer. Recoded HRAF subsistence classification with the value lables of: “hunter-gatherers”, “pastoralists”, “horticulturalists”, “agriculturalists”, and “other”}
#'   \item{\code{region}}{integer. SCCS region classification using the following value lables: "Africa", "Circum-Mediterranean", "East Eurasia", "Insular Pacific", "North America", "South America"}
#'   \item{\code{dom_against}}{double. The number of dominance model variables evidence against from the codesheet.}
#'   \item{\code{dom_none}}{double. The number of dominance model variables providing no evidence from the codesheet.}
#'   \item{\code{dom_sum}}{double. The number of dominance model variables that provide any evidence from that codesheet.}
#'   \item{\code{prestige_none}}{double. The number of prestige model variables providing no evidence from the codesheet.}
#'   \item{\code{prestige_sum}}{double. The number of prestige model variables that provide any evidence from that codesheet.}
#'   \item{\code{prestige_against}}{double. The number of prestige model variables evidence against from the codesheet.}
#'   \item{\code{neel_none}}{double. The number of neel model variables providing no evidence from the codesheet.}
#'   \item{\code{neel_sum}}{double. The number of neel model variables that provide any evidence from that codesheet.}
#'   \item{\code{neel_against}}{double. The number of Neel model variables evidence against from the codesheet.}
#'   \item{\code{hooper_none}}{double. The number of Hooper model variables providing no evidence from the codesheet.}
#'   \item{\code{hooper_sum}}{double. The number of Hooper model variables that provide any evidence from that codesheet.}
#'   \item{\code{hooper_against}}{double. The number of Hooper model variables evidence against from the codesheet.}
#'   \item{\code{neel_totals}}{double. The sum of all Neel model variables from that codesheet, e.g., '1's + '-1's.}
#'   \item{\code{hooper_totals}}{double. The sum of all Hooper model variables from that codesheet, e.g., '1's + '-1's.}
#'   \item{\code{dom_totals}}{double. The sum of all dominance model variables from that codesheet, e.g., '1's + '-1's.}
#'   \item{\code{prest_totals}}{double. The sum of all prestige model variables from that codesheet, e.g., '1's + '-1's.}
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
#'   \item{\code{neel_better.mates_present}}{double. Value of 1 indicates as least one codesheeet/text provides evidence for this variable, for this culture.}
#'   \item{\code{neel_big.family_present}}{double. Value of 1 indicates as least one codesheeet/text provides evidence for this variable, for this culture.}
#'   \item{\code{neel_intelligence_present}}{double. Value of 1 indicates as least one codesheeet/text provides evidence for this variable, for this culture.}
#'   \item{\code{neel_polygynous_present}}{double. Value of 1 indicates as least one codesheeet/text provides evidence for this variable, for this culture.}
#'   \item{\code{prestige_counsel_present}}{double. Value of 1 indicates as least one codesheeet/text provides evidence for this variable, for this culture.}
#'   \item{\code{prestige_emulated_present}}{double. Value of 1 indicates as least one codesheeet/text provides evidence for this variable, for this culture.}
#'   \item{\code{prestige_expertise_present}}{double. Value of 1 indicates as least one codesheeet/text provides evidence for this variable, for this culture.}
#'   \item{\code{prestige_family_present}}{double. Value of 1 indicates as least one codesheeet/text provides evidence for this variable, for this culture.}
#'   \item{\code{prestige_f.exp.success_present}}{double. Value of 1 indicates as least one codesheeet/text provides evidence for this variable, for this culture.}
#'   \item{\code{prestige_likable_present}}{double. Value of 1 indicates as least one codesheeet/text provides evidence for this variable, for this culture.}
#'   \item{\code{prestige_respected_present}}{double. Value of 1 indicates as least one codesheeet/text provides evidence for this variable, for this culture.}
#'   \item{\code{dom_aggression_present}}{double. Value of 1 indicates as least one codesheeet/text provides evidence for this variable, for this culture.}
#'   \item{\code{dom_assert.authority_present}}{double. Value of 1 indicates as least one codesheeet/text provides evidence for this variable, for this culture.}
#'   \item{\code{dom_avoid.dom_present}}{double. Value of 1 indicates as least one codesheeet/text provides evidence for this variable, for this culture.}
#'   \item{\code{dom_fear_present}}{double. Value of 1 indicates as least one codesheeet/text provides evidence for this variable, for this culture.}
#'   \item{\code{dom_fighting_present}}{double. Value of 1 indicates as least one codesheeet/text provides evidence for this variable, for this culture.}
#'   \item{\code{dom_personality_present}}{double. Value of 1 indicates as least one codesheeet/text provides evidence for this variable, for this culture.}
#'   \item{\code{dom_reputation_present}}{double. Value of 1 indicates as least one codesheeet/text provides evidence for this variable, for this culture.}
#'   \item{\code{dom_strong_present}}{double. Value of 1 indicates as least one codesheeet/text provides evidence for this variable, for this culture.}
#'   \item{\code{hooper_performance_present}}{double. Value of 1 indicates as least one codesheeet/text provides evidence for this variable, for this culture.}
#'   \item{\code{hooper_sanction.freeriders_present}}{double. Value of 1 indicates as least one codesheeet/text provides evidence for this variable, for this culture.}
#'   \item{\code{hooper_payoff_present}}{double. Value of 1 indicates as least one codesheeet/text provides evidence for this variable, for this culture.}
#'   \item{\code{hooper_group.size_present}}{double. Value of 1 indicates as least one codesheeet/text provides evidence for this variable, for this culture.}
#'   \item{\code{hooper_coop.activities_present}}{double. Value of 1 indicates as least one codesheeet/text provides evidence for this variable, for this culture.}
#'   \item{\code{neel_better.mates_mean}}{double. Mean value of variable across all codesheets for each culture. Values greater than 0 indicate greater evidence for than evidence against.}
#'   \item{\code{neel_big.family_mean}}{double. Mean value of variable across all codesheets for each culture. Values greater than 0 indicate greater evidence for than evidence against.}
#'   \item{\code{neel_intelligence_mean}}{double. Mean value of variable across all codesheets for each culture. Values greater than 0 indicate greater evidence for than evidence against.}
#'   \item{\code{neel_polygynous_mean}}{double. Mean value of variable across all codesheets for each culture. Values greater than 0 indicate greater evidence for than evidence against.}
#'   \item{\code{prestige_counsel_mean}}{double. Mean value of variable across all codesheets for each culture. Values greater than 0 indicate greater evidence for than evidence against.}
#'   \item{\code{prestige_emulated_mean}}{double. Mean value of variable across all codesheets for each culture. Values greater than 0 indicate greater evidence for than evidence against.}
#'   \item{\code{prestige_expertise_mean}}{double. Mean value of variable across all codesheets for each culture. Values greater than 0 indicate greater evidence for than evidence against.}
#'   \item{\code{prestige_family_mean}}{double. Mean value of variable across all codesheets for each culture. Values greater than 0 indicate greater evidence for than evidence against.}
#'   \item{\code{prestige_f.exp.success_mean}}{double. Mean value of variable across all codesheets for each culture. Values greater than 0 indicate greater evidence for than evidence against.}
#'   \item{\code{prestige_likable_mean}}{double. Mean value of variable across all codesheets for each culture. Values greater than 0 indicate greater evidence for than evidence against.}
#'   \item{\code{prestige_respected_mean}}{double. Mean value of variable across all codesheets for each culture. Values greater than 0 indicate greater evidence for than evidence against.}
#'   \item{\code{dom_aggression_mean}}{double. Mean value of variable across all codesheets for each culture. Values greater than 0 indicate greater evidence for than evidence against.}
#'   \item{\code{dom_assert.authority_mean}}{double. Mean value of variable across all codesheets for each culture. Values greater than 0 indicate greater evidence for than evidence against.}
#'   \item{\code{dom_avoid.dom_mean}}{double. Mean value of variable across all codesheets for each culture. Values greater than 0 indicate greater evidence for than evidence against.}
#'   \item{\code{dom_fear_mean}}{double. Mean value of variable across all codesheets for each culture. Values greater than 0 indicate greater evidence for than evidence against.}
#'   \item{\code{dom_fighting_mean}}{double. Mean value of variable across all codesheets for each culture. Values greater than 0 indicate greater evidence for than evidence against.}
#'   \item{\code{dom_personality_mean}}{double. Mean value of variable across all codesheets for each culture. Values greater than 0 indicate greater evidence for than evidence against.}
#'   \item{\code{dom_reputation_mean}}{double. Mean value of variable across all codesheets for each culture. Values greater than 0 indicate greater evidence for than evidence against.}
#'   \item{\code{dom_strong_mean}}{double. Mean value of variable across all codesheets for each culture. Values greater than 0 indicate greater evidence for than evidence against.}
#'   \item{\code{hooper_performance_mean}}{double. Mean value of variable across all codesheets for each culture. Values greater than 0 indicate greater evidence for than evidence against.}
#'   \item{\code{hooper_sanction.freeriders_mean}}{double. Mean value of variable across all codesheets for each culture. Values greater than 0 indicate greater evidence for than evidence against.}
#'   \item{\code{hooper_coop.activities_mean}}{double. Mean value of variable across all codesheets for each culture. Values greater than 0 indicate greater evidence for than evidence against.}
#'   \item{\code{hooper_payoff_mean}}{double. Mean value of variable across all codesheets for each culture. Values greater than 0 indicate greater evidence for than evidence against.}
#'   \item{\code{hooper_group.size_mean}}{double. Mean value of variable across all codesheets for each culture. Values greater than 0 indicate greater evidence for than evidence against.}
#'   \item{\code{c_culture_code}}{integer. HRAF OWC culture code.}
#'   \item{\code{Location}}{integer. Nation state which culture is located within, from the SCCS}
#'   \item{\code{Documents}}{integer. Number of eHRAF documents providing data for that culture.}
#'   \item{\code{V158.1}}{integer. SCCS cultural complexity variable}
#'   \item{\code{c_cultural_complexity}}{integer. SCCS cultural complexity value (SCCS V158.1), with modifications *check discrepancies}
#'   \item{\code{c_latitude}}{integer. Location latitude.}
#'   \item{\code{c_longitude}}{integer. Location longitude.}
#'   \item{\code{c_region}}{character. HRAF region}
#'   \item{\code{c_subregion}}{character. HRAF subregion}
#'   \item{\code{c_subsistence_code}}{integer. Numeric code assigned to HRAF subsistence classification.}
#'   \item{\code{c_subsistence_type}}{character. HRAF subsistence classification.}
#'   \item{\code{extract_count}}{integer. Number of texts associated with culture.}
#'   \item{\code{neel_total_cell_count}}{integer. Total number of cells associated with the neel model in the text x variable matrix for each culture. }
#'   \item{\code{neel_total_for}}{double. DESCRIPTION.}
#'   \item{\code{neel_total_none}}{double. DESCRIPTION.}
#'   \item{\code{neel_total_against}}{double. DESCRIPTION.}
#'   \item{\code{prest_total_cell_count}}{integer. Total number of cells associated with the prestige model in the text x variable matrix for each culture.}
#'   \item{\code{prest_total_for}}{double. DESCRIPTION.}
#'   \item{\code{prest_total_none}}{double. DESCRIPTION.}
#'   \item{\code{prest_total_against}}{double. DESCRIPTION.}
#'   \item{\code{dom_total_cell_count}}{integer. Total number of cells associated with the dominance model in the text x variable matrix for each culture.}
#'   \item{\code{dom_total_for}}{double. DESCRIPTION.}
#'   \item{\code{dom_total_none}}{double. DESCRIPTION.}
#'   \item{\code{dom_total_against}}{double. DESCRIPTION.}
#'   \item{\code{hooper_total_for}}{double. DESCRIPTION.}
#'   \item{\code{hooper_total_none}}{double. DESCRIPTION.}
#'   \item{\code{hooper_total_against}}{double. DESCRIPTION.}
#'   \item{\code{subsistence}}{integer. DESCRIPTION.}
#'   \item{\code{region}}{character. DESCRIPTION.}
#'   \item{\code{settlement_fixity}}{integer. DESCRIPTION.}
#'   \item{\code{com_size}}{integer. DESCRIPTION.}
#'   \item{\code{pop_density}}{integer. DESCRIPTION.}
#'   \item{\code{neel_cult_score}}{double. DESCRIPTION.}
#'   \item{\code{prest_cult_score}}{double. DESCRIPTION.}
#'   \item{\code{dom_cult_score}}{double. DESCRIPTION.}
#' }
"leader_cult"
