.class public final Landroidx/activity/SystemBarStyle;
.super Ljava/lang/Object;
.source "EdgeToEdge.kt"


# static fields
.field public static final Companion:Landroidx/activity/SystemBarStyle$Companion;


# instance fields
.field private final darkScrim:I

.field private final detectDarkMode:Lkotlin/jvm/functions/Function1;

.field private final lightScrim:I

.field private final nightMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Landroidx/activity/SystemBarStyle$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/activity/SystemBarStyle$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/activity/SystemBarStyle;->Companion:Landroidx/activity/SystemBarStyle$Companion;

    return-void
.end method

.method private constructor <init>(IIILkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput p1, p0, Landroidx/activity/SystemBarStyle;->lightScrim:I

    .line 110
    iput p2, p0, Landroidx/activity/SystemBarStyle;->darkScrim:I

    .line 111
    iput p3, p0, Landroidx/activity/SystemBarStyle;->nightMode:I

    .line 112
    iput-object p4, p0, Landroidx/activity/SystemBarStyle;->detectDarkMode:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/activity/SystemBarStyle;-><init>(IIILkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final getDetectDarkMode$activity_release()Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 112
    iget-object p0, p0, Landroidx/activity/SystemBarStyle;->detectDarkMode:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getNightMode$activity_release()I
    .locals 0

    .line 111
    iget p0, p0, Landroidx/activity/SystemBarStyle;->nightMode:I

    return p0
.end method

.method public final getScrimWithEnforcedContrast$activity_release(Z)I
    .locals 1

    .line 196
    iget v0, p0, Landroidx/activity/SystemBarStyle;->nightMode:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 197
    iget p0, p0, Landroidx/activity/SystemBarStyle;->darkScrim:I

    goto :goto_0

    .line 198
    :cond_1
    iget p0, p0, Landroidx/activity/SystemBarStyle;->lightScrim:I

    :goto_0
    return p0
.end method
