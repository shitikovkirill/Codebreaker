#!/usr/bin/env python3

from aws_cdk import core

from app_sync.app_synck_stack import AppSynckStack


app = core.App()
AppSynckStack(app, "app-synck")

app.synth()
