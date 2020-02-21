Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B20D166D1E
	for <lists+linux-riscv@lfdr.de>; Fri, 21 Feb 2020 03:48:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7RE8yadqunBbRH3qS8QB++tHjtjwApk9t/HNNGZGt0k=; b=mT5PpnJ4nOFI5O
	fwlpVn9TsanLhYsZSsa+wc7eFBcii62JdAQ6sv4rCLhQjIdbAGMt0VkeTw8L5zMUzeB+Xu7oOCG90
	58uJq3xyqfTaJE+iUkfCD6WkSfzPNf6QgvF6P+QyTKO7gWLRzT/CdJPuMhLSmBJV7o9mNwTi720P1
	2jrvkXvkgw2r91OUfSoZoqD0khZB0XFJkgysAm4MDuKJDY+ydTw0/2lAxToNt1pZfXmHefunXjtVD
	m7qCiluiDXXpo0jY8Iv1pUdI/22i04Wp48vwk5b46vQN97uhw8CbgIfuNVL0KGpBcMFgeg96w5h7X
	h0sdhDSEsA++3dR+E9gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4yN0-0006Hb-RL; Fri, 21 Feb 2020 02:48:50 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4yMw-0006Ek-Ek
 for linux-riscv@lists.infradead.org; Fri, 21 Feb 2020 02:48:47 +0000
Received: by mail-pj1-x1042.google.com with SMTP id ep11so85302pjb.2
 for <linux-riscv@lists.infradead.org>; Thu, 20 Feb 2020 18:48:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7RE8yadqunBbRH3qS8QB++tHjtjwApk9t/HNNGZGt0k=;
 b=foBMxyFqL1HySLXOnP3m4B+MiwL1nxlFgeYNRauFdEl0F0zmvYob0JOb+opoi1gSLs
 Z32gBcoGDrUVBWMvUnNjUkb6Bl/CakeWFI1Dw1FwlklPqEQxb9R0gLxcxkHBssHLVuMj
 uqbvjaEENysX/AP5QPjmVK10a4Gl9tfgtNiTq8ApZuyN3GSWw6WH0VMbl+2BcHWpobhn
 ykdS+pw4t8UBPFOb6/7ZB0dj+81dk7OxIbCZ4Bu6UtvNURFq4w612kt3zK/hHmmZ2SIu
 wCmCxh0+J4BgHb6RjSUPrcj7MugIy+Gulp6MtrCv5+BEMT01HGaEM+VBFulVELD2WO0l
 CKgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7RE8yadqunBbRH3qS8QB++tHjtjwApk9t/HNNGZGt0k=;
 b=sntybhghLeGZvSILCqQV4Ck5OfLztddgtRmVlsqO2la2vNz1m6RxUZ7GPvt2TpbHKK
 iOr2FKCzU09RxSFQ8TwkLDLWzntnxMAdO/8Bp7IAf8qkdUUIF6tRt8PhpUg/zti7gCpM
 mE3eZmJ6vfHn1U3t3N7S9KneyI6sHEBWZDNZE1An1/BmZzFTr1/O77bcKMzaSOtRL0ZY
 oi7o0bFeL0uJnreITmoc/hBTlGEjS5Cv76fSfbewWAeCwBnoDBox8Sw37WxqnskhywOt
 9qXMAWCJ9hewIF4RHiUqHIr5iB/5qP6l39D5sAtlM9uRSBmwqB99YSkVKpzOCNpyW8vX
 KFzw==
X-Gm-Message-State: APjAAAVvC4u9qNIxyG4OcMqY5eP9nC7TAdn3Mc31810cGQ165qcCZwux
 0qPwNS1m7iWw6rLOhBzRGCsSrw==
X-Google-Smtp-Source: APXvYqzMKIf5wkNGM3pzO9lo8wI2MZTmVLQGT0rG5tN/RteRBvqkWtb9ujdKOdoOkoK1dfe/AodaKQ==
X-Received: by 2002:a17:90a:2351:: with SMTP id
 f75mr294048pje.133.1582253325879; 
 Thu, 20 Feb 2020 18:48:45 -0800 (PST)
Received: from VincentChen-ThinkPad-T480s.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id 28sm618810pgl.42.2020.02.20.18.48.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 20 Feb 2020 18:48:45 -0800 (PST)
From: Vincent Chen <vincent.chen@sifive.com>
To: paul.walmsley@sifive.com,
	palmer@dabbelt.com
Subject: [PATCH V2 2/2] riscv: Change code model of module to medany to
 improve data accessing
Date: Fri, 21 Feb 2020 10:47:55 +0800
Message-Id: <1582253275-28181-3-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582253275-28181-1-git-send-email-vincent.chen@sifive.com>
References: <1582253275-28181-1-git-send-email-vincent.chen@sifive.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_184846_511817_31604970 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Vincent Chen <vincent.chen@sifive.com>, linux-riscv@lists.infradead.org,
 deanbo422@gmail.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

All the loaded module locates in the region [＆_end-2G，VMALLOC_END] at
runtime, so the distance from the module start to the end of the kernel
image does not exceed 2GB. Hence, the code model of the kernel module can
be changed to medany to improve the performance data access.

Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
---
 arch/riscv/Makefile | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index 33a1d7cbf775..a6abe5847e42 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -13,8 +13,10 @@ LDFLAGS_vmlinux :=
 ifeq ($(CONFIG_DYNAMIC_FTRACE),y)
 	LDFLAGS_vmlinux := --no-relax
 endif
-KBUILD_AFLAGS_MODULE += -fPIC
-KBUILD_CFLAGS_MODULE += -fPIC
+
+ifeq ($(CONFIG_64BIT)$(CONFIG_CMODEL_MEDLOW),yy)
+KBUILD_CFLAGS_MODULE += -mcmodel=medany
+endif
 
 export BITS
 ifeq ($(CONFIG_ARCH_RV64I),y)
-- 
2.7.4


