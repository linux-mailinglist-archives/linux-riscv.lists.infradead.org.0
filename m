Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDFFD1A1CF1
	for <lists+linux-riscv@lfdr.de>; Wed,  8 Apr 2020 09:57:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Quhy5/QZPA8/P4q/9fnjufmjHKuWjkZaQYF9/wabbVw=; b=L+khQVf/aHmpJg
	ZESn/MgzMFyM7cLIb+so4ro6NFA0oGDHZiQBfFjR1I/yI/hQI3LHjQKRFKJauUyJT2B7okqxu+lLZ
	VJHBFLhwltg3D7/UlhyPZTGii5kwYadns5nfBNtDtSIJvQrzzTJcQ1dJ9H4VpOYmeg7vqmrPYcOo6
	cVIVG7CKJQDL1qPZeahNWxpNUAoNlytdcWNpdSvg0uJ6Pl231ysNpHXPxh0Yj3pC3GTvrB6/SzGSu
	Y77cXwx8Otk3Cu9Bm+QM/UsjrY4CoQjRWcM70ZYiS0EYacdoxPzB/i+bSS/v3mN6TuidC78Pv/GlX
	/6PsI9BMu2mE5bbvOrGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM5aZ-0007sr-KD; Wed, 08 Apr 2020 07:57:35 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM5aN-0007ct-Jc
 for linux-riscv@lists.infradead.org; Wed, 08 Apr 2020 07:57:24 +0000
Received: by mail-pj1-x1041.google.com with SMTP id kx8so840832pjb.5
 for <linux-riscv@lists.infradead.org>; Wed, 08 Apr 2020 00:57:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Quhy5/QZPA8/P4q/9fnjufmjHKuWjkZaQYF9/wabbVw=;
 b=mPZ6G/DvSUkmvJrsHi7YzN51egMqhQiZtrVAWVMnop5ZSHgLEIBO5VaJpn2sJ8xXc5
 ceGghSnnkHeQjGqVbbP2GSy0IaxBEEDD6Uf8jv9x8gIZlTQBljt2bYXg6NVDSFCdlCZu
 8816ZszTSt5DuxQO6UH5wDNaGBBzdvNleauumy+j4WmLKypcrS3dk46ERhxQb0XuNgpI
 ZF9HkUjimJRUSoU1j4w7FGVsVl7LPc7yXlvcMju/o9Dfbc/lTI3GZnewD5hzYZvIjtsT
 F2Kr+fHNYLd4hVK2lKG/xFoBanJbWknoy5vYCfoT2CFkMrgBE5EeLDHzF4N5HwLlEfYh
 7lyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Quhy5/QZPA8/P4q/9fnjufmjHKuWjkZaQYF9/wabbVw=;
 b=SdfCgFfc2tbUC05BEIAHvaDYvVcitO2/i2IUSejAj4jgNNvBOMnIDLkU4KAwBN16OI
 JrG+XN4u0QUWnkCEpGg4KadyG+iWc5Qtj7to4SoZFr9ixIHTIa4tHqzagAhesMRJdDn5
 hrk8pwBjZDPOyMlCv995/puN4vHuKi4P6MrlUST/vya+ARjUO8AP7nbaGbynjyewGOr0
 4Jsfuq4Wmptcq34pmcodgB3BoC1oVRsjwOaMIMiBrTwQztj40+vWnQtEzXkykA5wtv5A
 3z3GCvcl3WT/XAXCT60D8Teh8Bk27DHQXjSl8Qmqy0AtsjHBWFyczTwzixLXMUs/v/tU
 6Jzg==
X-Gm-Message-State: AGi0PubdWBCryzm+njf6ZLlUFb3nIWffSuH1clPU3rXq31vIzK2S4bAb
 oa1SCiRfv/hp/NEUlqhZZhSZNA==
X-Google-Smtp-Source: APiQypJXFX/0Lnb7UwEs543bcGfXQmbM061XO3WoufDW75ChPwGGHilbdAdbTBnLkBOrX4EDrVWkHw==
X-Received: by 2002:a17:90a:65c5:: with SMTP id
 i5mr2480742pjs.18.1586332642779; 
 Wed, 08 Apr 2020 00:57:22 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id d85sm485599pfd.157.2020.04.08.00.57.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 00:57:22 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: palmer@dabbelt.com, paul.walmsley@sifive.com, aou@eecs.berkeley.edu,
 mhiramat@kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v5 7/9] riscv: move exception table immediately after RO_DATA
Date: Wed,  8 Apr 2020 15:57:02 +0800
Message-Id: <6dba29ff224e253bcacc7891caecadb5666d8059.1586332296.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.1586332296.git.zong.li@sifive.com>
References: <cover.1586332296.git.zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_005723_647527_FBD00449 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Palmer Dabbelt <palmerdabbelt@google.com>, Zong Li <zong.li@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Move EXCEPTION_TABLE immediately after RO_DATA. Make it easy to set the
attribution of the sections which should be read-only at a time.
Add _data to specify the start of data section with write permission.
This patch is prepared for STRICT_KERNEL_RWX support.

Signed-off-by: Zong Li <zong.li@sifive.com>
Suggested-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 arch/riscv/kernel/vmlinux.lds.S | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/kernel/vmlinux.lds.S b/arch/riscv/kernel/vmlinux.lds.S
index 1e0193ded420..02e948b620af 100644
--- a/arch/riscv/kernel/vmlinux.lds.S
+++ b/arch/riscv/kernel/vmlinux.lds.S
@@ -58,6 +58,10 @@ SECTIONS
 		*(.srodata*)
 	}
 
+	EXCEPTION_TABLE(0x10)
+
+	_data = .;
+
 	RW_DATA(L1_CACHE_BYTES, PAGE_SIZE, THREAD_SIZE)
 	.sdata : {
 		__global_pointer$ = . + 0x800;
@@ -69,8 +73,6 @@ SECTIONS
 
 	BSS_SECTION(PAGE_SIZE, PAGE_SIZE, 0)
 
-	EXCEPTION_TABLE(0x10)
-
 	.rel.dyn : {
 		*(.rel.dyn*)
 	}
-- 
2.26.0


