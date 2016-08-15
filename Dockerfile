FROM odoo:8

# Switch to root for package installation
USER root

# Add xlrd library
RUN set -x; \
    apt-get update \
    && apt-get install -y --no-install-recommends \
        python-pip \
    && pip install icalendar pycarddav ipdb
# Switch back to odoo user
USER odoo
