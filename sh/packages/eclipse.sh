#!/bin/bash

function eclipse() {
    _run_eclipse "java"
}

function eclipse_jee() {
    _run_eclipse "jee"
}

function eclipse_cpp() {
    _run_eclipse "cpp"
}

function _run_eclipse() {
    OPT_PATH="/opt/eclipse-${1}"

    log_info && log_info "Installing Eclipse ${1}..."

    if is_to_download "eclipse_${1}"; then
        download_package "http://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/${ECLIPSE_VERSION}/${ECLIPSE_RELEASE}/eclipse-${1}-${ECLIPSE_VERSION}-${ECLIPSE_RELEASE}-linux-gtk-${ARCH}.tar.gz"
    fi;

    verbose && verbose "Extract file ${PATH_PACKAGES}/eclipse-${1}-${ECLIPSE_VERSION}-${ECLIPSE_RELEASE}-linux-gtk-${ARCH}.tar.gz to ${PATH_TMP}"
    tar -xzvf "${PATH_PACKAGES}/eclipse-${1}-${ECLIPSE_VERSION}-${ECLIPSE_RELEASE}-linux-gtk-${ARCH}.tar.gz" -C "${PATH_TMP}"

    verbose && verbose "Move ${PATH_TMP}/eclipse folder to /opt/eclipse-${1}"
    sudo mv "${PATH_TMP}/eclipse" "/opt/eclipse-${1}"

    verbose && verbose "Execute script update_eclipse_ini.py"
    python scripts/update_eclipse_ini.py "${OPT_PATH}/eclipse.ini" "${JDK_BIN}"

    #if [[ "${WM}" == "openbox" ]]; then
    #    python scripts/remove_context_in_file "${OPENBOX_MENU_PATH}" $(echo "eclipse-${1}" | awk '{print toupper($0)}')
    #fi;

    create_run "${OPT_PATH}" "./eclipse" "eclipse-${1}"

    log_info && log_info "Eclipse Installed!"
}
