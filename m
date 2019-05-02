Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7329D11742
	for <lists+linux-riscv@lfdr.de>; Thu,  2 May 2019 12:35:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=KMGhlaYY59zBD9WYfQEx4+SC8yPpwuV7dGnHcOUxFM8=; b=T2r
	tJC13J/luaG0yzPA3K3V/baAGdVnjfIfz/m0CIeItlGcCTL3GfIJJTbRnbAzRbQQCEE5BKALm4Odo
	kn7oc6es7Zg2Sc7BEPaNkpG/yQTbvCn7wIxFJ2O35m6ZgZWCWq9toqsdyZiJ2Q+K5xIyradpLk7uU
	fheW95FW8zwyh0J/CvewKYXw1i6FCAGnY3MWin+/t45Pv3m2MgipydzoAsfZk/z4wr1pLbqSEHsoQ
	oUaCNvqd1RLAC+wf+h/73uND4i+jD9f0YKeXPsKoEb7RM9Y/b84zcqOHRrLPeYGyHBW5elW7PZNBw
	0VUP4X4NVby6tYZAUEtc2cN0C+BoEqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM93c-000618-61; Thu, 02 May 2019 10:35:16 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM93Y-000603-AR
 for linux-riscv@lists.infradead.org; Thu, 02 May 2019 10:35:14 +0000
Received: by mail-pf1-x443.google.com with SMTP id j11so884980pff.13
 for <linux-riscv@lists.infradead.org>; Thu, 02 May 2019 03:35:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=wZru5L4BwlMPJIzUrAzcCZvzKe2NTmlwt/CFToiy7Vs=;
 b=mX9KMI93SFhiHFZmRrSsQkw0yfoNOZT/f3xuRGJIUlEe4sgZGellOCd6jb7ZIfjpOF
 8ISyT58zUe1pShow8tMD1VF3snDw8geJ+PVIMjeF+do/3flqK42ioDxBE2Wlu6p5+eym
 19d4unsAjG54qqhfbbXfsikKv4gFLho8iMv+CaEO4tZE2GEqR4DO9xZtpJ+sh/+HC/5y
 /pQWz0ejLdonONRlEjWq4825blVVvGfGp6UU7XXuI8kx/gRovHn6Erb+CfdPjNGWCMf/
 NgNXUhNXwIgiBSuBre/hUSZBIX7rqdNFQWymugF9C9mXqOIIzg/UPED10GjBtc2/H9Ck
 N8Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=wZru5L4BwlMPJIzUrAzcCZvzKe2NTmlwt/CFToiy7Vs=;
 b=S9U0MViYnWoX9wTa4kuVgocp1qcxlhpHtbWEIw6XOi9AHFwgjXSoMKXbRzj8NlOdNR
 kW6SXvkKmpeahNwK6cC+of6eqj84LuNMMgBskgU5MtTJMcDS8JkFaAQ5dnCRqy/bB/Ob
 B6aD+6TAdxZajX78TguzfWwhD/uieQD1ahCy/hbVV9to8RniF9Unmsj8cBtQEDdyg4B9
 7L+qrJBGsNNP2Ed3s8p6T95TNkkqyYZ9sZUhhOIRugPcNXtjBndKVd6pygYY/cTSdKw1
 BTdq86d1Z3+qGWQkKCZsP1RsnXjuy9lFLxQ2b4XNa7pyx4nk2DJiSxwjoZMSn5QMzcov
 X9YQ==
X-Gm-Message-State: APjAAAXkRIl4n0XQcqLy+OoxqDYyWFZsuwMSBdjZSWflYMcf9cqZPwOr
 41pid378jK3iRu3j4zJn2LID9kJvnlY=
X-Google-Smtp-Source: APXvYqwhlRnOQWCW7OXs/Fj/+cKri7DVuTQHAbVswxgM3+H54vt4x285HDiFeTDUBiPVFAJHrPZ9ZA==
X-Received: by 2002:a63:4c24:: with SMTP id z36mr1290196pga.130.1556793310922; 
 Thu, 02 May 2019 03:35:10 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id
 h187sm69141133pfc.52.2019.05.02.03.35.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 02 May 2019 03:35:09 -0700 (PDT)
From: Yash Shah <yash.shah@sifive.com>
To: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
 palmer@sifive.com
Subject: [PATCH v2 0/2] L2 cache controller support for SiFive FU540
Date: Thu,  2 May 2019 16:04:51 +0530
Message-Id: <1556793293-21019-1-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_033512_401106_28D354D9 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, aou@eecs.berkeley.edu, linux-kernel@vger.kernel.org,
 sachin.ghadi@sifive.com, Yash Shah <yash.shah@sifive.com>, robh+dt@kernel.org,
 paul.walmsley@sifive.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch series adds an L2 cache controller driver with DT documentation
for SiFive FU540-C000.

These two patches were initially part of the patch series:
'L2 cache controller and EDAC support for SiFive SoCs'
https://lkml.org/lkml/2019/4/15/320
In order to merge L2 cache controller driver without any dependency on EDAC,
the L2 cache controller patches are re-posted separately in this series.

The patchset is based on Linux 5.1-rc2 and tested on HiFive Unleashed
board with additional board related patches needed for testing can be
found at dev/yashs/L2_cache_controller branch of:
https://github.com/yashshah7/riscv-linux.git

Change history:
v2
- Mention the valid values for cache properties in DT documentation
- Remove the unnecessary property 'reg-names'
- Add "cache" to supported compatible string property
- Remove conditional checks from debugfs functions in sifive_l2_cache.c

Yash Shah (2):
  RISC-V: Add DT documentation for SiFive L2 Cache Controller
  RISC-V: sifive_l2_cache: Add L2 cache controller driver for SiFive
    SoCs

 .../devicetree/bindings/riscv/sifive-l2-cache.txt  |  51 +++++
 arch/riscv/mm/Makefile                             |   1 +
 arch/riscv/mm/sifive_l2_cache.c                    | 221 +++++++++++++++++++++
 3 files changed, 273 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/riscv/sifive-l2-cache.txt
 create mode 100644 arch/riscv/mm/sifive_l2_cache.c

-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
