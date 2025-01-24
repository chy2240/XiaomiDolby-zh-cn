.class final Landroidx/window/embedding/ExtensionEmbeddingBackend$Api31Impl;
.super Ljava/lang/Object;
.source "ExtensionEmbeddingBackend.kt"


# static fields
.field public static final INSTANCE:Landroidx/window/embedding/ExtensionEmbeddingBackend$Api31Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/window/embedding/ExtensionEmbeddingBackend$Api31Impl;

    invoke-direct {v0}, Landroidx/window/embedding/ExtensionEmbeddingBackend$Api31Impl;-><init>()V

    sput-object v0, Landroidx/window/embedding/ExtensionEmbeddingBackend$Api31Impl;->INSTANCE:Landroidx/window/embedding/ExtensionEmbeddingBackend$Api31Impl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isSplitPropertyEnabled(Landroid/content/Context;)Landroidx/window/embedding/SplitController$SplitSupportStatus;
    .locals 2

    const-string p0, "EmbeddingBackend"

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 486
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 487
    const-string v1, "android.window.PROPERTY_ACTIVITY_EMBEDDING_SPLITS_ENABLED"

    .line 488
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 486
    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->getProperty(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageManager$Property;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    const-string v0, "try {\n                  \u2026ECLARED\n                }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 507
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$Property;->isBoolean()Z

    move-result v0

    if-nez v0, :cond_1

    .line 508
    sget-object p1, Landroidx/window/core/BuildConfig;->INSTANCE:Landroidx/window/core/BuildConfig;

    invoke-virtual {p1}, Landroidx/window/core/BuildConfig;->getVerificationMode()Landroidx/window/core/VerificationMode;

    move-result-object p1

    sget-object v0, Landroidx/window/core/VerificationMode;->LOG:Landroidx/window/core/VerificationMode;

    if-ne p1, v0, :cond_0

    .line 511
    const-string p1, "android.window.PROPERTY_ACTIVITY_EMBEDDING_SPLITS_ENABLED must have a boolean value"

    .line 509
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_0
    sget-object p0, Landroidx/window/embedding/SplitController$SplitSupportStatus;->SPLIT_ERROR_PROPERTY_NOT_DECLARED:Landroidx/window/embedding/SplitController$SplitSupportStatus;

    return-object p0

    .line 517
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 518
    sget-object p0, Landroidx/window/embedding/SplitController$SplitSupportStatus;->SPLIT_AVAILABLE:Landroidx/window/embedding/SplitController$SplitSupportStatus;

    goto :goto_0

    .line 520
    :cond_2
    sget-object p0, Landroidx/window/embedding/SplitController$SplitSupportStatus;->SPLIT_UNAVAILABLE:Landroidx/window/embedding/SplitController$SplitSupportStatus;

    :goto_0
    return-object p0

    :catch_0
    move-exception p1

    .line 500
    sget-object v0, Landroidx/window/core/BuildConfig;->INSTANCE:Landroidx/window/core/BuildConfig;

    invoke-virtual {v0}, Landroidx/window/core/BuildConfig;->getVerificationMode()Landroidx/window/core/VerificationMode;

    move-result-object v0

    sget-object v1, Landroidx/window/core/VerificationMode;->LOG:Landroidx/window/core/VerificationMode;

    if-ne v0, v1, :cond_3

    .line 503
    const-string v0, "PackageManager.getProperty is not supported"

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 505
    :cond_3
    sget-object p0, Landroidx/window/embedding/SplitController$SplitSupportStatus;->SPLIT_ERROR_PROPERTY_NOT_DECLARED:Landroidx/window/embedding/SplitController$SplitSupportStatus;

    return-object p0

    .line 491
    :catch_1
    sget-object p1, Landroidx/window/core/BuildConfig;->INSTANCE:Landroidx/window/core/BuildConfig;

    invoke-virtual {p1}, Landroidx/window/core/BuildConfig;->getVerificationMode()Landroidx/window/core/VerificationMode;

    move-result-object p1

    sget-object v0, Landroidx/window/core/VerificationMode;->LOG:Landroidx/window/core/VerificationMode;

    if-ne p1, v0, :cond_4

    .line 494
    const-string p1, "android.window.PROPERTY_ACTIVITY_EMBEDDING_SPLITS_ENABLED must be set and enabled in AndroidManifest.xml to use splits APIs."

    .line 492
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_4
    sget-object p0, Landroidx/window/embedding/SplitController$SplitSupportStatus;->SPLIT_ERROR_PROPERTY_NOT_DECLARED:Landroidx/window/embedding/SplitController$SplitSupportStatus;

    return-object p0
.end method
