.class public final Landroidx/core/os/BuildCompat;
.super Ljava/lang/Object;
.source "BuildCompat.kt"


# static fields
.field public static final AD_SERVICES_EXTENSION_INT:I

.field public static final INSTANCE:Landroidx/core/os/BuildCompat;

.field public static final R_EXTENSION_INT:I

.field public static final S_EXTENSION_INT:I

.field public static final T_EXTENSION_INT:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/core/os/BuildCompat;

    invoke-direct {v0}, Landroidx/core/os/BuildCompat;-><init>()V

    sput-object v0, Landroidx/core/os/BuildCompat;->INSTANCE:Landroidx/core/os/BuildCompat;

    .line 292
    sget-object v0, Landroidx/core/os/BuildCompat$Api30Impl;->INSTANCE:Landroidx/core/os/BuildCompat$Api30Impl;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroidx/core/os/BuildCompat$Api30Impl;->getExtensionVersion(I)I

    move-result v1

    .line 291
    sput v1, Landroidx/core/os/BuildCompat;->R_EXTENSION_INT:I

    const/16 v1, 0x1f

    .line 308
    invoke-virtual {v0, v1}, Landroidx/core/os/BuildCompat$Api30Impl;->getExtensionVersion(I)I

    move-result v1

    .line 307
    sput v1, Landroidx/core/os/BuildCompat;->S_EXTENSION_INT:I

    const/16 v1, 0x21

    .line 324
    invoke-virtual {v0, v1}, Landroidx/core/os/BuildCompat$Api30Impl;->getExtensionVersion(I)I

    move-result v1

    .line 323
    sput v1, Landroidx/core/os/BuildCompat;->T_EXTENSION_INT:I

    const v1, 0xf4240

    .line 340
    invoke-virtual {v0, v1}, Landroidx/core/os/BuildCompat$Api30Impl;->getExtensionVersion(I)I

    move-result v0

    .line 339
    sput v0, Landroidx/core/os/BuildCompat;->AD_SERVICES_EXTENSION_INT:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isAtLeastV()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method
