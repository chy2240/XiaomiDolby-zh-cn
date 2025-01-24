.class public abstract Lcom/google/android/setupcompat/util/WizardManagerHelper;
.super Ljava/lang/Object;
.source "WizardManagerHelper.java"


# static fields
.field public static final ACTION_NEXT:Ljava/lang/String; = "com.android.wizard.NEXT"


# direct methods
.method public static isAnySetupWizard(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 255
    :cond_0
    const-string v1, "isSetupFlow"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
