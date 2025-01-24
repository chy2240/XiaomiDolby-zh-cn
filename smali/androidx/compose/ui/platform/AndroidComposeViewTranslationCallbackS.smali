.class public final Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallbackS;
.super Ljava/lang/Object;
.source "AndroidComposeView.android.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallbackS;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallbackS;

    invoke-direct {v0}, Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallbackS;-><init>()V

    sput-object v0, Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallbackS;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallbackS;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final clearViewTranslationCallback(Landroid/view/View;)V
    .locals 0

    .line 2626
    invoke-virtual {p1}, Landroid/view/View;->clearViewTranslationCallback()V

    return-void
.end method

.method public final setViewTranslationCallback(Landroid/view/View;)V
    .locals 0

    .line 2620
    sget-object p0, Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallback;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallback;

    invoke-virtual {p1, p0}, Landroid/view/View;->setViewTranslationCallback(Landroid/view/translation/ViewTranslationCallback;)V

    return-void
.end method
