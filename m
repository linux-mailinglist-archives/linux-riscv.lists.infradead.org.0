Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33DD01DEEC7
	for <lists+linux-riscv@lfdr.de>; Fri, 22 May 2020 20:01:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:To:From:
	Subject:Date:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rD8FJvrr0fC2ieKuRxFHZchacDqiMocM1Gb2Kxm//Vs=; b=MZHJP/NNS3zxW86BeyB01+W0LK
	+rTBDJlXsT8HP7SEvVpq4pV2p/xAmUBrH36NK7ztu1VDurP1ku8lcfHxxC0g9GTZGVKLDhC+e5kEE
	h6K45ekO6Hj2IeAhuW7BD0sM1AArCWNNQLE3/vSa5Xqag9E5auE2/PuMJ9O7oi4sdioVhZ6llFuWa
	pznVgauyiZ30j2BX9EpuHg4fVaIeV48X0sTwTfKCXtt4J3CvJHM2+2974ehV03o+CqWe/lvZsoaic
	rGMkmzfBNGZ64c2WmmbWkJl7g4L8VFHL3vVf2J+xgl7sAmiHVxhJpUm4t9oSROEMgOBSJKtaa88yp
	16FBNl2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcByp-0007wM-UR; Fri, 22 May 2020 18:01:11 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcByn-0007vp-9o
 for linux-riscv@lists.infradead.org; Fri, 22 May 2020 18:01:10 +0000
Received: by mail-pg1-x542.google.com with SMTP id j21so5312893pgb.7
 for <linux-riscv@lists.infradead.org>; Fri, 22 May 2020 11:01:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:cc:from:to:message-id;
 bh=rD8FJvrr0fC2ieKuRxFHZchacDqiMocM1Gb2Kxm//Vs=;
 b=dDt/3eITjzRN4TUYt+d7Zp8lrPurA2/TZD2ebIN5BAPbwEdBaQtDJyPNYul2loH6OG
 sH4zthUeuoWnFm1wXBDERLHVx5+LxPNrqrC+U+C1u5sg4nn17+dtK/VO/BcZ0v35HMB9
 LiDm/+lgyHC2CaRVrOUNeftcOPs/yZbGiK8fnnv6bjju/HyKCcVpSQcm8tEpqsTBpfla
 u904r5FiUoAhNt9ZIFfXXAY+nW1Vro+S58Hc69Weede8JkBU6FWd+5Opm+OIf5FeClJt
 EQ4viSX1ptlh9+aylekROeXpFArGMnJOFROr+EZOxnHUfHAbTTQ6rdD3bIGvyoOlxRHL
 TCeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:cc:from:to:message-id;
 bh=rD8FJvrr0fC2ieKuRxFHZchacDqiMocM1Gb2Kxm//Vs=;
 b=R63Fue3186kgXOZmtGBwR1Vev9B8IuVMaGAqMuXO+Xx0zdEHLYYF7VOZDlT3ogWxx+
 oXqNtucO5hAhaEn5DnX2+G2iO6WA+Wu3pV2fs2RaaCTWawVJZG7CsOSDnvnqLwUYjZ75
 MH2qha/N0UrDBzlezzFvlJvJo1ukwQwyuYvdFuIueaQaWUVYyK7Q5xnZHvqAo8rS1rMA
 0zEZMw+QwNgQkJVdUBIzzXAjCnOPFqmOUBkWtQ5C9Vvfo4wXP+eyJxtJiCFgIk6ypVn5
 2iZptPRKreykSnak7I7LGwrnltjB6UcJzBKjcNxbRA7AZx6Lq2Jxu1nihL+3FiR48tHj
 yo6w==
X-Gm-Message-State: AOAM531y5bjNef8yo3MVVVhb5XRc9gpMYBayOOpoDMV0EODnw0RF7T2k
 bhFCcEz7tAkJJIGqGJTI+PTfwMYOWoO0yg==
X-Google-Smtp-Source: ABdhPJxjmVU9uuWtPRJsTb3MP4L7ia/njIBcR4S0BXftGNI5B0ZPqVM7lLCKJWfVpeRv0/YQHhOZWA==
X-Received: by 2002:a62:b503:: with SMTP id y3mr5073233pfe.3.1590170466372;
 Fri, 22 May 2020 11:01:06 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id w12sm5950957pjb.11.2020.05.22.11.01.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 11:01:05 -0700 (PDT)
Date: Fri, 22 May 2020 11:01:05 -0700 (PDT)
X-Google-Original-Date: Fri, 22 May 2020 10:54:02 PDT (-0700)
Subject: [GIT PULL] RISC-V Fixes for 5.7-rc7
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <mhng-258df3d4-aa39-484e-9fde-7d93432f3205@palmerdabbelt-glaptop1>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_110109_390529_68AD12ED 
X-CRM114-Status: UNSURE (   9.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The following changes since commit b9bbe6ed63b2b9f2c9ee5cbd0f2c946a2723f4ce:

  Linux 5.7-rc6 (2020-05-17 16:48:37 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv-for-linus-5.7-rc7

for you to fetch changes up to 8356c379cfba8b1b90b0a2423f6afbbe2cdc5d91:

  RISC-V: gp_in_global needs register keyword (2020-05-21 13:28:26 -0700)

----------------------------------------------------------------
RISC-V Fixes for 5.7-rc7

This tag contains two fixes:

* Another !MMU build fix that was a straggler from last week.
* A fix to use the "register" keyword for the GP global register variable.

----------------------------------------------------------------
Kefeng Wang (1):
      riscv: Fix print_vm_layout build error if NOMMU

Palmer Dabbelt (1):
      RISC-V: gp_in_global needs register keyword

 arch/riscv/kernel/process.c | 2 +-
 arch/riscv/mm/init.c        | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

