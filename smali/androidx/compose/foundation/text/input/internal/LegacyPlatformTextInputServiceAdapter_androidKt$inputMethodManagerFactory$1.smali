.class final synthetic Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter_androidKt$inputMethodManagerFactory$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "LegacyPlatformTextInputServiceAdapter.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter_androidKt$inputMethodManagerFactory$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter_androidKt$inputMethodManagerFactory$1;

    invoke-direct {v0}, Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter_androidKt$inputMethodManagerFactory$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter_androidKt$inputMethodManagerFactory$1;->INSTANCE:Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter_androidKt$inputMethodManagerFactory$1;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    .line 0
    const-string v4, "<init>(Landroid/view/View;)V"

    const/4 v5, 0x0

    const/4 v1, 0x1

    const-class v2, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;

    const-string v3, "<init>"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/view/View;)Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;
    .locals 0

    .line 59
    new-instance p0, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;

    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 59
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter_androidKt$inputMethodManagerFactory$1;->invoke(Landroid/view/View;)Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;

    move-result-object p0

    return-object p0
.end method
