.class final Landroidx/compose/foundation/IndicationModifier;
.super Ljava/lang/Object;
.source "Indication.kt"

# interfaces
.implements Landroidx/compose/ui/draw/DrawModifier;


# instance fields
.field private final indicationInstance:Landroidx/compose/foundation/IndicationInstance;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/IndicationInstance;)V
    .locals 0

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    iput-object p1, p0, Landroidx/compose/foundation/IndicationModifier;->indicationInstance:Landroidx/compose/foundation/IndicationInstance;

    return-void
.end method


# virtual methods
.method public draw(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 0

    .line 331
    iget-object p0, p0, Landroidx/compose/foundation/IndicationModifier;->indicationInstance:Landroidx/compose/foundation/IndicationInstance;

    invoke-interface {p0, p1}, Landroidx/compose/foundation/IndicationInstance;->drawIndication(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V

    return-void
.end method
