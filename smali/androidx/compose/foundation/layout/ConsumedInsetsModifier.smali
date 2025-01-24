.class final Landroidx/compose/foundation/layout/ConsumedInsetsModifier;
.super Ljava/lang/Object;
.source "WindowInsetsPadding.kt"

# interfaces
.implements Landroidx/compose/ui/modifier/ModifierLocalConsumer;


# instance fields
.field private final block:Lkotlin/jvm/functions/Function1;

.field private oldWindowInsets:Landroidx/compose/foundation/layout/WindowInsets;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    iput-object p1, p0, Landroidx/compose/foundation/layout/ConsumedInsetsModifier;->block:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 474
    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/layout/ConsumedInsetsModifier;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 478
    :cond_1
    check-cast p1, Landroidx/compose/foundation/layout/ConsumedInsetsModifier;

    iget-object p1, p1, Landroidx/compose/foundation/layout/ConsumedInsetsModifier;->block:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Landroidx/compose/foundation/layout/ConsumedInsetsModifier;->block:Lkotlin/jvm/functions/Function1;

    if-ne p1, p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 0

    .line 481
    iget-object p0, p0, Landroidx/compose/foundation/layout/ConsumedInsetsModifier;->block:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public onModifierLocalsUpdated(Landroidx/compose/ui/modifier/ModifierLocalReadScope;)V
    .locals 1

    .line 485
    invoke-static {}, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt;->getModifierLocalConsumedWindowInsets()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/compose/ui/modifier/ModifierLocalReadScope;->getCurrent(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/layout/WindowInsets;

    .line 486
    iget-object v0, p0, Landroidx/compose/foundation/layout/ConsumedInsetsModifier;->oldWindowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 487
    iput-object p1, p0, Landroidx/compose/foundation/layout/ConsumedInsetsModifier;->oldWindowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    .line 488
    iget-object p0, p0, Landroidx/compose/foundation/layout/ConsumedInsetsModifier;->block:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
