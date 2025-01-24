.class final Landroidx/compose/ui/text/Savers_androidKt$PlatformParagraphStyleSaver$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Savers.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/Savers_androidKt$PlatformParagraphStyleSaver$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/text/Savers_androidKt$PlatformParagraphStyleSaver$2;

    invoke-direct {v0}, Landroidx/compose/ui/text/Savers_androidKt$PlatformParagraphStyleSaver$2;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/Savers_androidKt$PlatformParagraphStyleSaver$2;->INSTANCE:Landroidx/compose/ui/text/Savers_androidKt$PlatformParagraphStyleSaver$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Landroidx/compose/ui/text/PlatformParagraphStyle;
    .locals 2

    .line 30
    const-string p0, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    const/4 p0, 0x0

    .line 32
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 93
    check-cast p0, Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    move-object p0, v0

    .line 32
    :goto_0
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const/4 v1, 0x1

    .line 33
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 93
    check-cast p1, Landroidx/compose/ui/text/EmojiSupportMatch;

    goto :goto_1

    :cond_1
    move-object p1, v0

    .line 33
    :goto_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/text/EmojiSupportMatch;->unbox-impl()I

    move-result p1

    .line 31
    new-instance v1, Landroidx/compose/ui/text/PlatformParagraphStyle;

    invoke-direct {v1, p1, p0, v0}, Landroidx/compose/ui/text/PlatformParagraphStyle;-><init>(IZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/Savers_androidKt$PlatformParagraphStyleSaver$2;->invoke(Ljava/lang/Object;)Landroidx/compose/ui/text/PlatformParagraphStyle;

    move-result-object p0

    return-object p0
.end method
