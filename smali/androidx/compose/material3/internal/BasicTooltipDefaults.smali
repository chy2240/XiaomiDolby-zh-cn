.class public final Landroidx/compose/material3/internal/BasicTooltipDefaults;
.super Ljava/lang/Object;
.source "BasicTooltip.kt"


# static fields
.field private static final GlobalMutatorMutex:Landroidx/compose/foundation/MutatorMutex;

.field public static final INSTANCE:Landroidx/compose/material3/internal/BasicTooltipDefaults;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/internal/BasicTooltipDefaults;

    invoke-direct {v0}, Landroidx/compose/material3/internal/BasicTooltipDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material3/internal/BasicTooltipDefaults;->INSTANCE:Landroidx/compose/material3/internal/BasicTooltipDefaults;

    .line 180
    new-instance v0, Landroidx/compose/foundation/MutatorMutex;

    invoke-direct {v0}, Landroidx/compose/foundation/MutatorMutex;-><init>()V

    sput-object v0, Landroidx/compose/material3/internal/BasicTooltipDefaults;->GlobalMutatorMutex:Landroidx/compose/foundation/MutatorMutex;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getGlobalMutatorMutex()Landroidx/compose/foundation/MutatorMutex;
    .locals 0

    .line 180
    sget-object p0, Landroidx/compose/material3/internal/BasicTooltipDefaults;->GlobalMutatorMutex:Landroidx/compose/foundation/MutatorMutex;

    return-object p0
.end method
