.class public final Landroidx/compose/ui/draw/DrawBackgroundModifier;
.super Landroidx/compose/ui/Modifier$Node;
.source "DrawModifier.kt"

# interfaces
.implements Landroidx/compose/ui/node/DrawModifierNode;


# instance fields
.field private onDraw:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 108
    iput-object p1, p0, Landroidx/compose/ui/draw/DrawBackgroundModifier;->onDraw:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public draw(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 0

    .line 112
    iget-object p0, p0, Landroidx/compose/ui/draw/DrawBackgroundModifier;->onDraw:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->drawContent()V

    return-void
.end method

.method public final setOnDraw(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 108
    iput-object p1, p0, Landroidx/compose/ui/draw/DrawBackgroundModifier;->onDraw:Lkotlin/jvm/functions/Function1;

    return-void
.end method
