Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63CF212C3A6
	for <lists+linux-riscv@lfdr.de>; Sun, 29 Dec 2019 18:22:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=d2ZCOXk6pOuLZ4uX0KmFIbD6q4XT8KzNcuufQdURRQw=; b=Tu1
	rQcRQuXYXeXM/JkybdXrtTdosfRx1m+jHiLW7EBebR+XJK8sHrr5cv8TQ0G9wKBWj3vRCsEq/apzT
	N9dCZymK1+g+pgsrhf9fz0k8s3jwcLcs9dQZDJaT4/nUfcAi5aXhxxcu/kL4vAVtrCSZSMYA2aiWg
	tglznSsdhJU/0K+i/WsF2m34Ckp9GbGQeYdSvf4t4jqE1NGyeTY6ROHHb0ZKtKgGvAqqw6RceTw2N
	IsWweeTGzbYN3/ZuczXOFVuubqsC37O9IppdtmDhwe8pqI6lx/BkGUd9C0bSLP7SOmTAkSFoJZI33
	QRYuMRGfh+sYTTpMBQJzYLQDFhG/+WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilcH1-0006s8-Mr; Sun, 29 Dec 2019 17:22:39 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilcGx-0006r4-Ob
 for linux-riscv@lists.infradead.org; Sun, 29 Dec 2019 17:22:37 +0000
Received: by mail-pg1-x544.google.com with SMTP id x7so16941170pgl.11
 for <linux-riscv@lists.infradead.org>; Sun, 29 Dec 2019 09:22:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:message-id:user-agent:mime-version;
 bh=d2ZCOXk6pOuLZ4uX0KmFIbD6q4XT8KzNcuufQdURRQw=;
 b=HyR8Bdo6jGIDQMwbuh/d960hidl00ggcit9R+GdoUC7sCFuZn4d0N/bqmU5Qb6yjL6
 9UiOvJH387CsLCBCQ2tTppi5Q4vhNbFgIAIXEo889sr+yw8lrOvRRAl4gIvuHTyXx4sP
 s4Aas7Wk5ioEfpXR0txmfcigTT0OAh+vgPBiSe+cG5nBG9ckLiY/WhLdD33eVnOB3exk
 1krypmpTg2an+ag88yNu6ZBZU2r4QyJd9IvWOa8N3EnI6CyHDyDQ87Hze9G+JwFvzvkw
 JrsGmNz9nIeKX8zpT28lMSe9/2cHcdq6Cra7Yg8LuEdMD3bLPJgZw5n0lVJO7UUhr/Cv
 luCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:user-agent
 :mime-version;
 bh=d2ZCOXk6pOuLZ4uX0KmFIbD6q4XT8KzNcuufQdURRQw=;
 b=QjtZ2V1OdnNnAf3HwdacFAbEOumVXZKo+wVX+3aTP+ZtrfYa4MI45ou0LZe8jTW+x2
 MRbSOIfUvrUH8OTOd/glbQYPK5HwsvmvkZnUp1Uxihl0LdSyUaqgkpQi2aPAMcsXqReb
 2bNPovZX5QbM/pWCWUD+A8UZh3ivuuQB1HSMnyraRDl98HBg3T4pKoNeKwHoxXgqR1PR
 id1ZunyslXlavddwCTr4LipceFsPqlor1zd1aQdScv3vblFXsU7kUufhvLo+952PZVPa
 oEb3LI0kw7kK7segxk8DNFW9ZC/+WRPif2d0hFxfmLNx2VT+eqe1bB4mtcPY+f3l4F/f
 EhBg==
X-Gm-Message-State: APjAAAUdkJFxu6i7t0+jN2O5m3yHbDVWhrgMxNJJd38RRJfvRltMmJZ/
 GSUB6mCI0lzy+FcXe95BLWa9oM3Pa40=
X-Google-Smtp-Source: APXvYqxS9B4VPY19ezhDkronqK9tX2Dc3/dG7ZtNqjBtPXUiLRViaQeqCJ3xDgjeHrXpbyuW4w4gjw==
X-Received: by 2002:a63:1110:: with SMTP id g16mr45710067pgl.84.1577640151958; 
 Sun, 29 Dec 2019 09:22:31 -0800 (PST)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id j10sm21907911pjb.14.2019.12.29.09.22.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Dec 2019 09:22:31 -0800 (PST)
Date: Sun, 29 Dec 2019 09:22:29 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: torvalds@linux-foundation.org
Subject: [GIT PULL] RISC-V updates for v5.5-rc4
Message-ID: <alpine.DEB.2.21.9999.1912290921260.204131@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_092235_992086_84B0E6A1 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

The following changes since commit 46cf053efec6a3a5f343fead837777efe8252a46:

  Linux 5.5-rc3 (2019-12-22 17:02:23 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv/for-v5.5-rc4

for you to fetch changes up to 1833e327a5ea1d1f356fbf6ded0760c9ff4b0594:

  riscv: export flush_icache_all to modules (2019-12-27 21:51:01 -0800)

----------------------------------------------------------------
RISC-V updates for v5.5-rc4

One important fix for RISC-V:

- Redirect any incoming syscall with an ID less than -1 to
  sys_ni_syscall, rather than allowing them to fall through into the
  syscall handler.

and two minor build fixes:

- Export __asm_copy_{from,to}_user() from where they are defined.
  This fixes a build error triggered by some randconfigs.

- Export flush_icache_all().  I'd resisted this before, since
  historically we didn't want modules to be able to flush the I$
  directly; but apparently everyone else is doing it now.

----------------------------------------------------------------
David Abdurachmanov (1):
      riscv: reject invalid syscalls below -1

Luc Van Oostenryck (1):
      riscv: fix compile failure with EXPORT_SYMBOL() & !MMU

Olof Johansson (1):
      riscv: export flush_icache_all to modules

 arch/riscv/kernel/entry.S       | 1 +
 arch/riscv/kernel/riscv_ksyms.c | 3 ---
 arch/riscv/lib/uaccess.S        | 4 ++++
 arch/riscv/mm/cacheflush.c      | 1 +
 4 files changed, 6 insertions(+), 3 deletions(-)


Kernel object size difference:
   text	   data	    bss	    dec	    hex	filename
6896332	2329908	 313920	9540160	 919240	vmlinux.rv64.orig
6896379	2329908	 313920	9540207	 91926f	vmlinux.rv64.patched
6656967	1939072	 257576	8853615	 87186f	vmlinux.rv32.orig
6656994	1939072	 257576	8853642	 87188a	vmlinux.rv32.patched
1171666	 353368	 130024	1655058	 194112	vmlinux.nommu_virt.orig
1171674	 353368	 130024	1655066	 19411a	vmlinux.nommu_virt.patched

