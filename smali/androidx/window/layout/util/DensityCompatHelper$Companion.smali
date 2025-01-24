.class public final Landroidx/window/layout/util/DensityCompatHelper$Companion;
.super Ljava/lang/Object;
.source "DensityCompatHelper.kt"


# static fields
.field static final synthetic $$INSTANCE:Landroidx/window/layout/util/DensityCompatHelper$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/window/layout/util/DensityCompatHelper$Companion;

    invoke-direct {v0}, Landroidx/window/layout/util/DensityCompatHelper$Companion;-><init>()V

    sput-object v0, Landroidx/window/layout/util/DensityCompatHelper$Companion;->$$INSTANCE:Landroidx/window/layout/util/DensityCompatHelper$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Landroidx/window/layout/util/DensityCompatHelper;
    .locals 0

    .line 44
    sget-object p0, Landroidx/window/layout/util/DensityCompatHelperApi34Impl;->INSTANCE:Landroidx/window/layout/util/DensityCompatHelperApi34Impl;

    return-object p0
.end method
