.class public Landroidx/navigation/ActivityNavigator;
.super Landroidx/navigation/Navigator;
.source "ActivityNavigator.kt"


# annotations
.annotation runtime Landroidx/navigation/Navigator$Name;
    value = "activity"
.end annotation


# static fields
.field public static final Companion:Landroidx/navigation/ActivityNavigator$Companion;


# instance fields
.field private final context:Landroid/content/Context;

.field private final hostActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Landroidx/navigation/ActivityNavigator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/navigation/ActivityNavigator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/navigation/ActivityNavigator;->Companion:Landroidx/navigation/ActivityNavigator$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Landroidx/navigation/Navigator;-><init>()V

    .line 37
    iput-object p1, p0, Landroidx/navigation/ActivityNavigator;->context:Landroid/content/Context;

    .line 40
    sget-object v0, Landroidx/navigation/ActivityNavigator$hostActivity$1;->INSTANCE:Landroidx/navigation/ActivityNavigator$hostActivity$1;

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->generateSequence(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 179
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    .line 45
    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 180
    :goto_0
    check-cast v0, Landroid/app/Activity;

    .line 40
    iput-object v0, p0, Landroidx/navigation/ActivityNavigator;->hostActivity:Landroid/app/Activity;

    return-void
.end method
