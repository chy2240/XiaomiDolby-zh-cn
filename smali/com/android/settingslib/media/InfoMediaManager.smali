.class public abstract Lcom/android/settingslib/media/InfoMediaManager;
.super Ljava/lang/Object;
.source "InfoMediaManager.java"


# static fields
.field private static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 134
    const-string v0, "InfoMediaManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/media/InfoMediaManager;->DEBUG:Z

    return-void
.end method
