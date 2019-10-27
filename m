Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E95F1E6011
	for <lists+linux-riscv@lfdr.de>; Sun, 27 Oct 2019 02:03:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nrl9USr0ry42Zcm72xMbVCgl2eFbzufUdaMDzt+c7Do=; b=ZtilDNm1H9I4/c
	kDfDiwoMbjB0VuL7huMAy6/kIW1pxTXUUYssuv342Xg6WEcPDmMuANkatg3oOheMMLLlxUz9IwUTo
	FGrX3MRLjBD54NZQLVj6RbpHmdI0HvCBQ02pORrlYsd4OiTxFDqrw+djWcZWx6l6V8FpqVPk58HHJ
	2QeR1d5ZhbznVp1OlJTAySbqgk1n4UgwfcjWtXpgL9ZDvVuxeDYUxhpw5fmRt9+rcXjKwGWV1Lr1t
	5TKOV536J+awBHW/E4AP4ivMAEi0ziqbPSxlEvBOzbnoDgXeNfs6WDx9N1JaCl8kjhSWYOux6jgYA
	Ay3GqxMgTTAL1JFfgk+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOW1H-0002XG-L6; Sun, 27 Oct 2019 00:02:55 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOW1D-0002Wj-As
 for linux-riscv@lists.infradead.org; Sun, 27 Oct 2019 00:02:53 +0000
Received: by mail-il1-x141.google.com with SMTP id b12so3039789ilf.12
 for <linux-riscv@lists.infradead.org>; Sat, 26 Oct 2019 17:02:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:message-id:user-agent:mime-version;
 bh=TkHK+LczTbJSvpWQAyXBad4CDMq6IejY7MsNk9Sty/g=;
 b=caY2+KFU6Ctu9z8FO/dJ/geKBV+ZhppvnEqO8mVA5yNfpIQQArxoZA5VG60uPUGt/w
 E1fce+mS4Dyh/f4hENE9P/dVrxCCY1zMsuGstP1+IaU3YdcQfI1scmjHQK1vl4k7VQ6T
 yrAnt5bKj5JzFpxIMbj+WaqSdl2I7AF8PwxEEAvwYiOW6n+HwegKJtVBbkmsD6KdiU+O
 +Lu7BvFhnR8M1U9bysaE97f4y+j+YAjunSnhLFRXB3jwUsUmJVERIcZbu07C0TcgVUEK
 qXoAU7zYpO2B+R7FxBwHY1yMYaVUefCmUXiHTGFYDdQbQDbcUJYKOFimegUcMt/t2T6K
 wiMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:user-agent
 :mime-version;
 bh=TkHK+LczTbJSvpWQAyXBad4CDMq6IejY7MsNk9Sty/g=;
 b=YWoQ6PjH21lKWYKMG3tkOL0gMPdt60VU+1BKLmFHakrNpSUHoS1raTmf4ZgL9r92bF
 Qi+YEf+kiIdY3XoDBvQguSCCwzpjWMPQbPi4AgKrJHb4t1o5wfxA/a5uWaBuY+iypE7n
 34wDfv3ewbMHyPY5FlFUI0LYn6YWr2hp5ipDAvEDoCN2yl1RGDUmKeqv7MlvtltR4MND
 +26RQcnp3rgvOuX81x1/9+BuFNjh79Bm9q364HGzaOW7uODrWJvWakSY29Rj9Bz8ePCh
 aoVYjBX/2GGBe8Y3PLSsHWrlA/FhpZlNF/VCx+4wf09ijgFJRoerlH+8G0/cRTafr+8v
 BH+w==
X-Gm-Message-State: APjAAAUA+jsXSC6UNWuGtKo5NSktupdkvjkUkqMKm0pxkaQhG9jNrLsE
 e+pZskuKLtPOAYm99sq7jz6Pc16Zq80=
X-Google-Smtp-Source: APXvYqwBFcwr9ysVivTLsXhBPD6G/eWIDo2HBJjBtPIHRJ1UA+yXrdjjoZvrwZmwMnw4jGBGPmrOeQ==
X-Received: by 2002:a92:1f44:: with SMTP id i65mr12227031ile.123.1572134566763; 
 Sat, 26 Oct 2019 17:02:46 -0700 (PDT)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id t74sm898683ili.17.2019.10.26.17.02.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Oct 2019 17:02:46 -0700 (PDT)
Date: Sat, 26 Oct 2019 17:02:43 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: torvalds@linux-foundation.org
Subject: [GIT PULL] RISC-V updates for v5.4-rc5
Message-ID: <alpine.DEB.2.21.9999.1910261701250.12828@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_170251_386207_2A66BF98 
X-CRM114-Status: UNSURE (   8.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Linus,

The following changes since commit 7d194c2100ad2a6dded545887d02754948ca5241:

  Linux 5.4-rc4 (2019-10-20 15:56:22 -0400)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv/for-v5.4-rc5-b

for you to fetch changes up to e8f44c50dfe75315d1ff6efc837d62cbe7368c9b:

  riscv: cleanup do_trap_break (2019-10-25 16:32:38 -0700)

----------------------------------------------------------------
RISC-V updates for v5.4-rc5

Several minor fixes and cleanups for v5.4-rc5:

- Three build fixes for various SPARSEMEM-related kernel configurations

- Two cleanup patches for the kernel bug and breakpoint trap handler code

----------------------------------------------------------------
Christoph Hellwig (2):
      riscv: cleanup <asm/bug.h>
      riscv: cleanup do_trap_break

David Abdurachmanov (1):
      riscv: fix fs/proc/kcore.c compilation with sparsemem enabled

Kefeng Wang (2):
      riscv: Fix implicit declaration of 'page_to_section'
      riscv: Fix undefined reference to vmemmap_populate_basepages

 arch/riscv/include/asm/bug.h     | 16 +++-------------
 arch/riscv/include/asm/pgtable.h |  7 +------
 arch/riscv/kernel/traps.c        | 26 ++++++--------------------
 arch/riscv/mm/init.c             |  2 +-
 4 files changed, 11 insertions(+), 40 deletions(-)

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
