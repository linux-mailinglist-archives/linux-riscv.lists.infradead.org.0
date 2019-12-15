Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 842F311FAFD
	for <lists+linux-riscv@lfdr.de>; Sun, 15 Dec 2019 21:10:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=4oVTeaUcizdZRek2jakws5ojZHkLSM8+eDXqYTbgspk=; b=ajx
	ovBNTVq686PCW32C0ytsVHgwWYBFzCUgmW7NQDUI+BblUg4bjDUXucL0E3Q2cnMeki7WpM7dimeXk
	QYTD0k/U8yfSqhqf8Waj4EUy/wxgullx6OzVED9x9I9bLFS7RgBLRRaLzME6JZhKCxNV31GYhxF+q
	toofXYIKfafqhQfmvv5Ki2re/Qk9Pp3NbKhlUv57kJkEXwzhJmPNHz2cmDLlPuBtguMsPpbw7OExM
	yeg0vtMIQM665/XHaPN6LO9oniiPUHEq4lZbdpwaGnIS0PYdyjJ1yqBEZlmmmjzLLrK0sFpsktb5Q
	31cD02sp/ZLrTfZfTuIFy1o+l8pHP0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igaDw-0000W0-37; Sun, 15 Dec 2019 20:10:40 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igaDs-0000VM-SG
 for linux-riscv@lists.infradead.org; Sun, 15 Dec 2019 20:10:38 +0000
Received: by mail-pg1-x542.google.com with SMTP id q127so2437421pga.4
 for <linux-riscv@lists.infradead.org>; Sun, 15 Dec 2019 12:10:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:message-id:user-agent:mime-version;
 bh=4oVTeaUcizdZRek2jakws5ojZHkLSM8+eDXqYTbgspk=;
 b=iXmF/pVjPzHQtbRFRjSfW8jrsAtwaiiAgq4s4q7wkV8JseHdyEWTD2FMJEbCI8iaah
 Qi/kZHESbjtzz+AHX0SWQcniiipqzHZgaT5DqCdJmXlwrY/dzAEytylEIdUJwh3b4w8V
 8BJaFIA9JnHl+5dWnqWq8DtHUfNdaBWjNKNW1sSLICM/o0tFHbIo66j8dGD42oWYrp79
 3sEaB152YysTBn/O5AURQ7vSsLCbusEfTKMv+4uMaiIV/hlcgt+TkB+MVPPt0MyDBE9W
 blx07XlveTByiQ/w8tXS8J4XFc1jV1Gcc8zPowUR4kQZ9VmOYX3JoZCkbOoacTxxtkef
 6Ofg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:user-agent
 :mime-version;
 bh=4oVTeaUcizdZRek2jakws5ojZHkLSM8+eDXqYTbgspk=;
 b=fv4Vu77DS63NHLzNaCZVwi9amwoyDPxk54CEMDPbMn9bLGFecLkSV8hhyd8DyhXwzT
 rchCWD55V/wmjOUAfjw7ORggjB7yqiNYEPy3nVBrgAbzgp2kre8t7Ne5pkovsYJSF0jw
 lAf/h0P14Dc0CzRq7WaoUb6zjukp8H+O1XZoI3zP3IF1fMNBj3BuTS4EfchHFxcMwx0O
 XmoOUV5A/zI+dQ9ZVlB3La3LKDUXAIpRlXnfIKqMbsxWxg6nQX4NEAbEQnjqzsWuTDUd
 tu5LNTeMS/a8Jq2coZO1ERNwv3RV+BMUu43zb2DYokv8px1wH8J6ObZwAVFRwPl2IG+1
 r6tQ==
X-Gm-Message-State: APjAAAUs7BAVhv4jfJiGXkVmMGWx3WtH+kIl45Si7kDTcyBR4B0lWlXo
 VemXC39/reTAyGuk+l1Alt+QoWu8SQg=
X-Google-Smtp-Source: APXvYqywrbqkJTQcPY0XPbhNZieALwwt9vPR0wqVwSChoxaOw/tpU9V4+tOjrmXuFK+Ope4J1nop6w==
X-Received: by 2002:a63:a508:: with SMTP id n8mr13494053pgf.278.1576440636218; 
 Sun, 15 Dec 2019 12:10:36 -0800 (PST)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id h5sm19549500pfk.30.2019.12.15.12.10.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Dec 2019 12:10:35 -0800 (PST)
Date: Sun, 15 Dec 2019 12:10:34 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: torvalds@linux-foundation.org
Subject: [GIT PULL] RISC-V updates for v5.5-rc2
Message-ID: <alpine.DEB.2.21.9999.1912151208120.91169@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_121036_943295_1E470BA3 
X-CRM114-Status: UNSURE (   8.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv/for-v5.5-rc2

for you to fetch changes up to bc3e8f5d42d5cfac3f7ac9b458c2eeb02e8b1cf7:

  riscv: only select serial sifive if TTY is enabled (2019-12-08 20:29:01 -0800)

----------------------------------------------------------------
RISC-V updates for v5.5-rc2

Two minor build fixes:

- Fix builds of the ELF loader when built with 'make -j1' (nommu only)

- Fix CONFIG_SOC_SIFIVE builds when CONFIG_TTY is disabled (found
  during randconfig testing)

----------------------------------------------------------------
Kefeng Wang (1):
      riscv: only select serial sifive if TTY is enabled

Olof Johansson (1):
      riscv: Fix build dependency for loader

 arch/riscv/Kconfig.socs  | 4 ++--
 arch/riscv/boot/Makefile | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

Kernel object size difference:
   text	   data	    bss	    dec	    hex	filename
6894571	2330908	 313920	9539399	 918f47	vmlinux.rv64.orig
6894571	2330908	 313920	9539399	 918f47	vmlinux.rv64.patched
6655594	1939880	 257640	8853114	 87167a	vmlinux.rv32.orig
6655594	1939880	 257640	8853114	 87167a	vmlinux.rv32.patched
1172124	 354264	 130024	1656412	 19465c	vmlinux.nommu_virt.orig
1172124	 354264	 130024	1656412	 19465c	vmlinux.nommu_virt.patched


