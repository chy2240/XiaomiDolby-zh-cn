.class public final Landroidx/navigation/compose/DialogNavigator;
.super Landroidx/navigation/Navigator;
.source "DialogNavigator.kt"


# annotations
.annotation runtime Landroidx/navigation/Navigator$Name;
    value = "dialog"
.end annotation


# static fields
.field public static final Companion:Landroidx/navigation/compose/DialogNavigator$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Landroidx/navigation/compose/DialogNavigator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/navigation/compose/DialogNavigator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/navigation/compose/DialogNavigator;->Companion:Landroidx/navigation/compose/DialogNavigator$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroidx/navigation/Navigator;-><init>()V

    return-void
.end method
