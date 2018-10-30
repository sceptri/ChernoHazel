TEMPLATE = subdirs

SUBDIRS += \
    Hazel \
    Sandbox

Sandbox.depends = Hazel
