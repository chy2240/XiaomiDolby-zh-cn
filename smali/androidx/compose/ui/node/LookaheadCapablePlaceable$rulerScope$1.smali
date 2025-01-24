.class public final Landroidx/compose/ui/node/LookaheadCapablePlaceable$rulerScope$1;
.super Ljava/lang/Object;
.source "LookaheadDelegate.kt"

# interfaces
.implements Landroidx/compose/ui/layout/RulerScope;


# instance fields
.field final synthetic this$0:Landroidx/compose/ui/node/LookaheadCapablePlaceable;


# direct methods
.method constructor <init>(Landroidx/compose/ui/node/LookaheadCapablePlaceable;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$rulerScope$1;->this$0:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDensity()F
    .locals 0

    .line 82
    iget-object p0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$rulerScope$1;->this$0:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result p0

    return p0
.end method

.method public getFontScale()F
    .locals 0

    .line 85
    iget-object p0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$rulerScope$1;->this$0:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    invoke-interface {p0}, Landroidx/compose/ui/unit/FontScaling;->getFontScale()F

    move-result p0

    return p0
.end method
