idf_component_register(
    SRCS main.cc main_functions.cc model.cc
    PRIV_REQUIRES spi_flash esp_timer
    INCLUDE_DIRS "")
