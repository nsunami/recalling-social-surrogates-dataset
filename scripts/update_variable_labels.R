# Function to update the metadata for the variables measured
update_variable_labels <- function(recalling_surrogates_data){
 recalling_surrogates_data |>
  labelled::set_variable_labels(
    Gender_Identity = "Gender identity (selected)",
    Rejection_Essay = "Essay written by participants recalling their rejection experience",
    NonSurrogacy_Essay = "Essay written by participants recalling their experience playing a non-surrogacy video game",
    Surrogacy_Essay = "Essay written by participants recalling experience playing a surrogacy video game",
    Study_Purpose = "During the study, did you wonder about the purpose of the study or procedures? If so, what did you think the study was about?",
    Share_Anything = "Is there anything you’d like to share with us about your experience in this study? Please use the space below to explain your answers to any of the previous questions, or to provide any feedback.",
    attention_rejection_correct = "Participant correctly identifying that they wrote a rejection essay",
    parasocial_MC_group = "Parasocial relationship coded into 3 groups used for the exploratory manipulation check",
    attention_VG_correct = "Participant correctly identifying the video game that they wrote an essay about",
    attention_all_correct = "Whether all attention check items were correct",
    essay_condition = "Video game essay condition that participant was assigned (social surrogacy vs non-social surrogacy)",
    Race_8GP = "Racial identity recoded to 8 groups",
    Rejection_Essay_Len = "Length of the rejection essay in characters",
    Surrogacy_Essay_Len = "Length of the surrogacy essay in characters",
    Share_Anything_Len = "Length of the free-text response for sharing anything",
    Study_Purpose_Len = "Length of the free-text response for the gussed purpose of the study",
    Exit_Q_Order = "Order in which the exit questions were presented",
    target_game_name_cl = "Target game mentioned for the video game essay",
    A = "Rater A indicating that the participant followed the instructions",
    B = "Rater B indicating that the participant followed the instructions",
    C = "Rater C indicating that the participant followed the instructions",
    agreeAB = "Agreement between Raters A and B",
    agreeAC = "Agreement between Raters A and C",
    agreeBC = "Agreement between Raters B and C",
    agreeAB_percent = "Percent agreement between Raters A and B",
    agreeAC_percent = "Percent agreement between Raters A and C",
    agreeBC_percent = "Percent agreement between Raters B and C",
    initial_codes = "Initial code for whether the participant followed the instructions",
    highest_pair = "Highest agreeing raters",
    third_rater = "Third rater resolving any discrepancy",
    followed_VGinstructions = "Whether participants followed the instructions for nominating a video game"
  )
}