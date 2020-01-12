Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0AAC1387C1
	for <lists+linux-riscv@lfdr.de>; Sun, 12 Jan 2020 19:55:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=sjiTupl1aH/Xahl3/v7jqT3OgaZIdxBQzCtu8/taQU4=; b=DmI
	YYCh9UVMkJwu/cTWPh/uskFkUo9tw6n7+k3rhenjn54pXZoLRgwE0h1Gm3SzpO0URXr59tZtRjBNa
	gjOJuranzG0ORkBD2GinH5yreTFXx7oEKNu79eH6OjPx/l4f/y+behoOXoN9RJAFTIh/s0T/0oY84
	EhgX5RXdCrwPlE+fRXIDmtTghhh0L9rH6MpnJUAe1o4sfbaa4RcMAaANRlgSob36ceMtMNA/bTcoH
	wUoycX5+/yd2RAQ4kHs6l7dgI1MUO6zwq9MqD+jQeg5T8wEiDZg3z+XVYlB5ZxDZW5jmp3xKOg/vt
	pftqvV+OuxuDMnPqIHKQbLqO1GX9b+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqiOR-0003dZ-6a; Sun, 12 Jan 2020 18:55:23 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqiOM-0003dE-W9
 for linux-riscv@lists.infradead.org; Sun, 12 Jan 2020 18:55:20 +0000
Received: by mail-io1-xd44.google.com with SMTP id n21so7231901ioo.10
 for <linux-riscv@lists.infradead.org>; Sun, 12 Jan 2020 10:55:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:message-id:user-agent:mime-version;
 bh=sjiTupl1aH/Xahl3/v7jqT3OgaZIdxBQzCtu8/taQU4=;
 b=YKc6V6rnCIh8jlw1HnXQdZTe5E7BjaVQ+2tTcpm0NWICfA1JJ6qf+wPaDMeaY89SgI
 MwanU2+jL+7YDSourly0RgJs5S/22gHruKhMEO1d8DNL9rN7aQWtQo7ebON6AmqmL99d
 izAJOVNnODZGtoH7ocCqblcnR4TWvq3S33cEGvGL5xXIdpVB+CZQGmQeNPAdv8AUuG8s
 zWleISAn1U3XYz1bakWuvaEoiym1ghFE8ih9bVSdpOGhCwstJmg93ZCP+MsEt3F36uh/
 xdKdnuyd9dSgnsmnC9TJEqYgcjbj5EUoVdCeFK1DjhXYZfoEkFWnTs/yrYS3FMJJnO3X
 dE5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:user-agent
 :mime-version;
 bh=sjiTupl1aH/Xahl3/v7jqT3OgaZIdxBQzCtu8/taQU4=;
 b=icFmYe9AuecLfydJy5O+nLar9serpJAaHrGNl/mLV0+CNBoFdTTY2eB+2pGoCom064
 j5GKNUlvtDDZBOLPuy/E2lHHvQ+2wzDgvXqMIn8IZ5G+WCbKpDuqVAePFQCyO4pGtwGg
 B1XMyi3XCp7UWKF/4XrjawPtWcvnBV70FUnLiY6GOeHVkSTjnFe9CbcuC4Xqa1x4Dc5h
 GJpLLrC0XP9nw7j+bZVmOiAgV2ViMFket2LbpX4UTvdAtAWtb1ihW887pyg7UBDaRMX/
 pE6gKSyMBvrwJE8x3BMDfM5yQVA034bsem9Wn1z0pDdoNVC3u7o3LmRq/RTLa0kcK/8Q
 xFuA==
X-Gm-Message-State: APjAAAUycK3bajl+NGqWHOWrA2LuY3wIrr0IW7vHCj9U7gGbN4696ee+
 geIHlSKJ6qBsZQTKAocgQBGO2Q==
X-Google-Smtp-Source: APXvYqyNYVO5JlpupDx8axRh0GheIzuQdYAl9vGdMJvb7YVqpCJ8z+SRzowJbs+SjHag1Un9ZgKBeA==
X-Received: by 2002:a5e:cb4d:: with SMTP id h13mr9490916iok.92.1578855317541; 
 Sun, 12 Jan 2020 10:55:17 -0800 (PST)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id n5sm3032645ila.7.2020.01.12.10.55.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 12 Jan 2020 10:55:17 -0800 (PST)
Date: Sun, 12 Jan 2020 10:55:14 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: torvalds@linux-foundation.org
Subject: [GIT PULL] RISC-V updates for v5.5-rc6
Message-ID: <alpine.DEB.2.21.9999.2001121053560.205587@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_105519_247552_B3A7CB64 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Linus,

The following changes since commit c79f46a282390e0f5b306007bf7b11a46d529538:

  Linux 5.5-rc5 (2020-01-05 14:23:27 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv/for-v5.5-rc6

for you to fetch changes up to dc6fcba72f0435b7884f2e92fd634bb9f78a2c60:

  riscv: Fixup obvious bug for fp-regs reset (2020-01-12 10:12:44 -0800)

----------------------------------------------------------------
RISC-V updates for v5.5-rc6

Two fixes for RISC-V:

- Clear FP registers during boot when FP support is present, rather than
  when they aren't present

- Move the header files associated with the SiFive L2 cache controller
  to drivers/soc (where the code was recently moved)

----------------------------------------------------------------
Guo Ren (1):
      riscv: Fixup obvious bug for fp-regs reset

Yash Shah (1):
      riscv: move sifive_l2_cache.h to include/soc

 arch/riscv/kernel/head.S                                         | 2 +-
 drivers/edac/sifive_edac.c                                       | 2 +-
 drivers/soc/sifive/sifive_l2_cache.c                             | 2 +-
 {arch/riscv/include/asm => include/soc/sifive}/sifive_l2_cache.h | 6 +++---
 4 files changed, 6 insertions(+), 6 deletions(-)
 rename {arch/riscv/include/asm => include/soc/sifive}/sifive_l2_cache.h (72%)

Kernel object size difference:
   text	   data	    bss	    dec	    hex	filename
6896663	2329920	 313920	9540503	 919397	vmlinux.rv64.orig
6896663	2329920	 313920	9540503	 919397	vmlinux.rv64.patched
6656922	1939060	 257576	8853558	 871836	vmlinux.rv32.orig
6656922	1939060	 257576	8853558	 871836	vmlinux.rv32.patched
1171746	 353372	 130024	1655142	 194166	vmlinux.nommu_virt.orig
1171746	 353372	 130024	1655142	 194166	vmlinux.nommu_virt.patched


