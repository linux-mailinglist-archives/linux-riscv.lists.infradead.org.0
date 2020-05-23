Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD441DFB13
	for <lists+linux-riscv@lfdr.de>; Sat, 23 May 2020 23:00:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/EsWH2Z0Xvdv8zJjOt7cdEn91hyou87YyYLaPvp1v0g=; b=BfuFJfdhWRHGEJ
	19oveYVFduBzGQdfKMpOHt+Rl/LAYf5ekwl4hs4LlJLr1BemoxyEPYa0EF+sXbMu5p1w6/ysgvJgB
	lP4UOHGDiHWFLb6eXs94C6RfxR8N3wlXHRqywD1WKR1GCBrOD14dFeKpuEtaNlaFS/meGZ64hmKSZ
	Vv9Aga4W8ODYkSywHdcmrqOTXXT2IJ81xXt9zJFyvVOBk4vihMcAb9d5TahvEpjnWHXPODUr27sEa
	8WNxhBa/owm+46Jz8imDhdcAMCnX5mqwdwP9MbuR8jK9b00IDikjS4x7JbK5l3sqOtMfAS6VFoNh1
	zeT1+/aWbeNj79Ngonow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcbFm-00020c-SZ; Sat, 23 May 2020 21:00:22 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcbFj-0001zc-96
 for linux-riscv@lists.infradead.org; Sat, 23 May 2020 21:00:20 +0000
Received: by mail-lj1-x243.google.com with SMTP id z6so16690313ljm.13
 for <linux-riscv@lists.infradead.org>; Sat, 23 May 2020 14:00:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/EsWH2Z0Xvdv8zJjOt7cdEn91hyou87YyYLaPvp1v0g=;
 b=Sa+zxmlNg4c4JyBiPsaefryAVRYS6ONzMiCbRBmwpc+hAQNtYDz+lOIxj+ucvehdqo
 ypLmP2uZvIgBWdTDaWu3LfltZpO4GulH5Pgz3H02sv+xcBlYz4oe5LQI1pv01c44md7i
 Jo+F1VZys1v2hG+sClcfy3T/48pEXUIMHTU8Mij5YMtKou+s53bBLTfBeXoiIOf+M271
 LjlgjMJ5FvGIAeoFHQ1ecuUNorIrjgc1iIV1xSFp3vLj054ToUdfHJXfjayJidRx7bHQ
 Q5LUXMHe1NHAnUJrv8uyTP0VsLQ6Fu+py5AAZFpGwhi1KpISLvCn911JBwqbxDlaAxfT
 0huw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/EsWH2Z0Xvdv8zJjOt7cdEn91hyou87YyYLaPvp1v0g=;
 b=EhOwUcpk9aO4oQVlavOkv5krLxZSXfbtQEY4bMeuXvpl3zYFNR5kXy8dr8TyQwIlPZ
 yG7PKVPXpoYVROytNZKxRi1SFMo8GFRmmiBrdYVR33itTIFNGnkywT29jeo7VxUKYO42
 nysSHB0Za78DD0FFZWVokt4v5nhTyGhRuz9OvlPAAPBwrNg9h/r7xsz5tNvrQ/Kvhylv
 eOBrOH6aJGAZpDwbpzgMZsQQxCAGGw49MomTvqDRIk8/n/7fO4D2rBKOhkpYCxELKZHN
 4OZEsoEBA8JBc0wX5u3Qp40egzXK4g461+PlpSpjkDcXd6HjsO77EH1lrFUdLwqrWLJO
 MhUg==
X-Gm-Message-State: AOAM531eh6akkzXJSViibsMo0QXmJAAFYd7sTfns5WEh+C4qKOBaCt3j
 OdjtEa4heiS/TmiEYKngkgA=
X-Google-Smtp-Source: ABdhPJxqC3eua7TiWDvHzfAusUT8WgJI9LirGt3xhFJCsgjp4JjoI0zMuM6j3vW61/66xYpF6S7YIw==
X-Received: by 2002:a2e:b4f3:: with SMTP id s19mr3830469ljm.218.1590267612343; 
 Sat, 23 May 2020 14:00:12 -0700 (PDT)
Received: from btopel-mobl.ger.intel.com (c83-250-27-170.bredband.comhem.se.
 [83.250.27.170])
 by smtp.gmail.com with ESMTPSA id d22sm3320712lfc.27.2020.05.23.14.00.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 May 2020 14:00:11 -0700 (PDT)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] Documentation/features: Correct RISC-V kprobes support entry
Date: Sat, 23 May 2020 23:00:05 +0200
Message-Id: <20200523210005.59140-1-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_140019_317913_8D5E14BB 
X-CRM114-Status: UNSURE (   8.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bjorn.topel[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The Documentation/features/debug/kprobes/arch-support.txt incorrectly
states that RISC-V has kprobes support. This is not the case.

Note that entries that have been incorrectly marked with 'ok' will not
be changed back to 'TODO' by the features-refresh.sh script.

Fixes: 7156fc292850 ("Documentation/features: Refresh the arch support status files in place")
Signed-off-by: Björn Töpel <bjorn.topel@gmail.com>
---
 Documentation/features/debug/kprobes/arch-support.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/features/debug/kprobes/arch-support.txt b/Documentation/features/debug/kprobes/arch-support.txt
index e68239b5d2f0..0ed80700bc35 100644
--- a/Documentation/features/debug/kprobes/arch-support.txt
+++ b/Documentation/features/debug/kprobes/arch-support.txt
@@ -23,7 +23,7 @@
     |    openrisc: | TODO |
     |      parisc: |  ok  |
     |     powerpc: |  ok  |
-    |       riscv: |  ok  |
+    |       riscv: | TODO |
     |        s390: |  ok  |
     |          sh: |  ok  |
     |       sparc: |  ok  |

base-commit: 423b8baf18a8c03f2d6fa99aa447ed0da189bb95
-- 
2.25.1


