Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F34B107AF2
	for <lists+linux-riscv@lfdr.de>; Fri, 22 Nov 2019 23:57:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6fzgr2LaL3KAAZDsqQ+9qlwPKR13tavvAAN7+MZBGtA=; b=F6xGASAsAI3dcB
	9vxSwurrRCIv8sFAChLniRroYAm6O2J25ELT4NbGHZ6JPshcdjAzVGhLt9PMV8vOJvhpN8Ne08vnG
	zLtEKCPRzVSo1fn/fCqPo8kdt0fCaQYpNo8LYo4PFuHBwhCxnnwD4rLqW9mYnpc+l/zRX04tAjWVa
	I+u95jWlMGAAYd3XiAsbZ6fec23CiuFflag0DWcL3pxgYylXD3yrZ+lIJzdh2lwGu5hHO/K3KbVlH
	Ak2TrlAWzjV6JmERSPl0CfmnejWZpUQT50djwMlOdufF+hA6RL6670D8SNp4RVA2BhAeqvysCdOb5
	hFKAs03FBSobJFQvDTzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYHs8-0008Rn-MZ; Fri, 22 Nov 2019 22:57:52 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYHs5-0008Qw-Db
 for linux-riscv@lists.infradead.org; Fri, 22 Nov 2019 22:57:50 +0000
Received: by mail-il1-x143.google.com with SMTP id p6so8570428ilp.1
 for <linux-riscv@lists.infradead.org>; Fri, 22 Nov 2019 14:57:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=u3ZBGYnvbJ/3nC+9DjDgIqK97Mwi6LQxKmI4rG9RExg=;
 b=ZNg6oVsYlzBrw+efMsCCKJFqUM7pP5WJAG3qgMjIb0gYMFdfjOLDYsIxGc8FzaxZ1u
 RbVAQ2XiHWGtar5BEx1bZQmXaUagK/styfpLTil1J057VCH5u4FGEc5J7f/XRUqlAYAs
 i5HpA2gbxnG8lOh0IeB+P0Q9UqAVktrc+UYcSQfdo3LZHQpX81RZI3ImSIIujMdA1797
 uv3Yp9rNZ9DnTtkCi2392cEkIk2qJNF453a8+tvt8BK9Y13Q0HvO3tuCwK5KNcS5BNbe
 jlYieAQgReeHxuyWipzj2dBlt8eEu3IimpQSd7QcQA6SijuBE0Rdhtbi6CE8+SXm4YFb
 2LKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=u3ZBGYnvbJ/3nC+9DjDgIqK97Mwi6LQxKmI4rG9RExg=;
 b=hUakf0Mp8lD3PhgNIqtGdBKKMXlqbhbu99exeMnm3mD3t7n+GQpWgPJSKB2WNovMST
 YtfMXTYW3ZBbrp1zOCynRZFuZXRZ+yGMEy+0hhIFdqyeqC+2FppkPWF52yi8pJ8FhrcH
 I5I36NyvGjBa/YP47A3fwwaFf9Vko6xluCA+pGYfxxvS23h5kvU9kDOwjxvkjAHDMdzk
 m7/bUzDSta+rhDebjqI+g9lgkVg8ZHPPpatGhq+sqB6flkNfu4N1TjejqfqxWNmo3g7j
 NAy4LdjpjyR34P9epmcVAjp3amSmt0WLU8iKsOziWRaJgEm1EYrUwQOtrCt8OXPNbe6w
 tYAg==
X-Gm-Message-State: APjAAAVYACwZ1/gpY27UDRmfOsJtW2bkoqxUceDKGB+euJiD0LXdWwTC
 G+Msy9BG6NiRlvnx+t8Kpa8GI5jY0S8=
X-Google-Smtp-Source: APXvYqxtiKJSC7igr3lL77ErIu+id/gxtWpxS43pAdQZ2RUOnTCZoaoEUbp6J8KXzVQejZdOdWf0NQ==
X-Received: by 2002:a92:109c:: with SMTP id 28mr19458344ilq.142.1574463468403; 
 Fri, 22 Nov 2019 14:57:48 -0800 (PST)
Received: from viisi.Home ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id x9sm3277098ilp.43.2019.11.22.14.57.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 14:57:41 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
To: linux-riscv@lists.infradead.org
Subject: [PATCH 1/2] riscv: defconfigs: enable debugfs
Date: Fri, 22 Nov 2019 14:56:58 -0800
Message-Id: <20191122225659.21876-2-paul.walmsley@sifive.com>
X-Mailer: git-send-email 2.24.0.rc0
In-Reply-To: <20191122225659.21876-1-paul.walmsley@sifive.com>
References: <20191122225659.21876-1-paul.walmsley@sifive.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_145749_459426_2C75CF9F 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

debugfs is broadly useful, so enable it in the RISC-V defconfigs.

Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 arch/riscv/configs/defconfig      | 1 +
 arch/riscv/configs/rv32_defconfig | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
index 420a0dbef386..f0710d8f50cc 100644
--- a/arch/riscv/configs/defconfig
+++ b/arch/riscv/configs/defconfig
@@ -100,4 +100,5 @@ CONFIG_9P_FS=y
 CONFIG_CRYPTO_USER_API_HASH=y
 CONFIG_CRYPTO_DEV_VIRTIO=y
 CONFIG_PRINTK_TIME=y
+CONFIG_DEBUG_FS=y
 # CONFIG_RCU_TRACE is not set
diff --git a/arch/riscv/configs/rv32_defconfig b/arch/riscv/configs/rv32_defconfig
index 87ee6e62b64b..bdec58e6c5f7 100644
--- a/arch/riscv/configs/rv32_defconfig
+++ b/arch/riscv/configs/rv32_defconfig
@@ -97,4 +97,5 @@ CONFIG_9P_FS=y
 CONFIG_CRYPTO_USER_API_HASH=y
 CONFIG_CRYPTO_DEV_VIRTIO=y
 CONFIG_PRINTK_TIME=y
+CONFIG_DEBUG_FS=y
 # CONFIG_RCU_TRACE is not set
-- 
2.24.0.rc0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
