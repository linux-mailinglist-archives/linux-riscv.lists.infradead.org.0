Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1648E1E6F5A
	for <lists+linux-riscv@lfdr.de>; Fri, 29 May 2020 00:44:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:From:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QBaFOqv0c0/uBoZDY4aBNnVcpPLEnLmvCHMRgMWJn+k=; b=NXBuVypIiBKPuMuv16213h5CS
	FxGs8KDHRo/ZFwEgRDVbH7eEfVmxshvohbIJErPquzIRWnDDijYHSY5XNFvEy8lq+RYg2k+wslcXc
	SWaYXQUjOOd4QL6BmqI/MJCIQVutoe0+sxhe4KVGSXAXvZHCx6q9iibUWjGa7YvsiSjqnNSHvB2rG
	Ne5hBvrDusDfJcTYxtuUtpPmG5tqiesBlaESVnFFfYgeLkXCnusRB7khNNwgTin6+1yDImOSjA7ke
	kV3Hs36uiqhDsCfrNpJnK1LpBaHQ1pyLA9ErmyE3C9Q1aGLF7WOhQXzV8FENYwIa9bkq1Ia/hdQNP
	wxqx+D5Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeRFz-0001SZ-Uq; Thu, 28 May 2020 22:44:11 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeRFw-0001R5-B6
 for linux-riscv@lists.infradead.org; Thu, 28 May 2020 22:44:09 +0000
Received: by mail-pg1-x544.google.com with SMTP id r10so302995pgv.8
 for <linux-riscv@lists.infradead.org>; Thu, 28 May 2020 15:44:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding:cc:from:to;
 bh=QBaFOqv0c0/uBoZDY4aBNnVcpPLEnLmvCHMRgMWJn+k=;
 b=dDY0jVQscLnglFYCeXXKPUxOnkZFOHI5oMCCUUPgtlbaRyofv6Vpb0Him68Mti4lWX
 5w0dhZCT7JnfW42xatGA0hjcLyLLONd3lAvTdhtIEM1t7EXrC/kARgFClKxQBhl1jTvE
 rW1Y2HyQLrpBtepMEL0DV5DPyJ3mDD4EcX0/hfFbLOKZNoWgm4WhcJstUHT8QrtO9QgO
 q2up7VizS/0UL6ik6mv9JyoT+b44/orAoL0vuXY4DNOIhD6dPyP8l5/wALJE3wu0y+cB
 Y4gAVxg3JbJNnxjbKrmZUN6pAsRSIRZh53N5a+7JEvhk2BGBzZu0DxsGnteNzQrT0C6u
 +YCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding:cc:from:to;
 bh=QBaFOqv0c0/uBoZDY4aBNnVcpPLEnLmvCHMRgMWJn+k=;
 b=rW7TDe4b+7lmwky6hD9vdKGcBniiju/UdhgfVh13lDBG7x+kG2R+jtjj+46JgHEtGi
 14AKc388gkgeiPbWizA8+jsdfuIWIP04cn9ppS2FOZDIPTWcwAGKAugpfN5KtUhsMRhq
 NRNp83qGTk8A0uogOMAh/zb1F3KU7oBwcmayEim9j7mQVl49t87SYADOdv7nyYYPpIzp
 xHSG/UNI4uQ6HWIgUUACyP/mObEr4zoAnYzKPS+oS6C9y8wriOnaZOEE+2uBgAEwZveY
 eBIzQeByxNuu/QwBYH5kn93zl3wHaguhabR1mi+mMv9clqW7E0/nNj+kHT68pjrl4iti
 cMBQ==
X-Gm-Message-State: AOAM533esgxbz2fzJtE7ITfFdbLiwLtDtAPRzjGYyALUVyhXdtGb/Iih
 SO9XuRBB4DGi8nsyVK4201ajqw==
X-Google-Smtp-Source: ABdhPJzXp10j3U1SqiSNNvW2qS7iKYsaFZh/pXRojdN889cl3hLRU0TNFJlZmE3kLeQ4vUf429apmA==
X-Received: by 2002:a63:ef09:: with SMTP id u9mr5496919pgh.406.1590705846528; 
 Thu, 28 May 2020 15:44:06 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id 9sm6258908pju.1.2020.05.28.15.44.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 15:44:06 -0700 (PDT)
Subject: [PATCH 2/2] soc: sifive: l2 cache: Mark l2_get_priv_group as static
Date: Thu, 28 May 2020 15:43:53 -0700
Message-Id: <20200528224353.32559-2-palmer@dabbelt.com>
X-Mailer: git-send-email 2.27.0.rc0.183.gde8f92d652-goog
In-Reply-To: <20200528224353.32559-1-palmer@dabbelt.com>
References: <20200528224353.32559-1-palmer@dabbelt.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Palmer Dabbelt <palmer@dabbelt.com>
To: linux-riscv@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_154408_375163_A71885E4 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kbuild test robot <lkp@intel.com>, anup@brainfault.org,
 Palmer Dabbelt <palmerdabbelt@google.com>, linux-kernel@vger.kernel.org,
 yash.shah@sifive.com, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 bp@suse.de, kernel-team@android.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Palmer Dabbelt <palmerdabbelt@google.com>

The kbuild test robot is firing a warning over a missing prototype.  The
function can just be static.

Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 drivers/soc/sifive/sifive_l2_cache.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/sifive/sifive_l2_cache.c b/drivers/soc/sifive/sifive_l2_cache.c
index 51e198880a8d..44d7e1951da3 100644
--- a/drivers/soc/sifive/sifive_l2_cache.c
+++ b/drivers/soc/sifive/sifive_l2_cache.c
@@ -133,7 +133,7 @@ static const struct attribute_group priv_attr_group = {
 	.attrs = priv_attrs,
 };
 
-const struct attribute_group *l2_get_priv_group(struct cacheinfo *this_leaf)
+static const struct attribute_group *l2_get_priv_group(struct cacheinfo *this_leaf)
 {
 	/* We want to use private group for L2 cache only */
 	if (this_leaf->level == 2)
-- 
2.27.0.rc0.183.gde8f92d652-goog


