Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3B33D5252
	for <lists+linux-riscv@lfdr.de>; Sat, 12 Oct 2019 22:11:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FNHW+lpYoFuvSNB28uFgcT36iyoGfppOnfjqb0KDiJA=; b=U7LbD80sBpDjXd
	lQL6m9cV8LbXx6eiTLKP9Eq//LBxkUCgyfli4+6vaAMPJb5/9whQk3yLnx2Qa5qpqw7W9WzVPe4gY
	gNc6nBO4yuLZ7hloFavwMvI89qdzKyrAe/3w7lMXBaJHO6boKwQ8fPONFsJRhLWG6yHNGRS2xyalt
	bc8yxLs5ry4gBHWUUvHwFH3OPiIraKm91LaC2pzALcJkeKdvNz7wHBqYafPu+8YXgRI8NZ2xQADPp
	7taTaYwUtrYE0Nqo8s/YesdohzjSG1zEgEpoWWlQw8rQgzMBLRhiucJm6cnTMBETWoeHl0kO6Iehl
	LSQsSG+hMJaD2tlezuvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJNj7-0007nl-B2; Sat, 12 Oct 2019 20:10:57 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJNj4-0007nG-SK
 for linux-riscv@lists.infradead.org; Sat, 12 Oct 2019 20:10:56 +0000
Received: by mail-io1-xd42.google.com with SMTP id c25so28593121iot.12
 for <linux-riscv@lists.infradead.org>; Sat, 12 Oct 2019 13:10:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:message-id:user-agent:mime-version;
 bh=w4/POuTWUDiZtOhUix11luXG+xnY9Yx35d0vIUWcKFE=;
 b=DlKXNXRs6QgShbGdEn/kZP9ek6vlfp+9Nkuj/VBQgO+gM4l1hR8CavApjGkyY44uat
 pxuov27CpBZx6QF+yN89kE5WZsIvZF6HOJbrdBxJAEcWA8WlZ0JwgM2xyOGRmZ+f3yoO
 muTjP6sSWHS2jRsxzt6f8KgsgXGPUQ6ZrDvfps5AEdo8EalcNhGVh8qvEA2/s7mlpZAL
 KbK7RNuLPha9WCvf2WmcqGm5ipkFzRw3bydc4oyIMi4GSnEF6+ikVdTLWdFEYyjRJMFv
 AAzEo8Xqt2cQrZhnC7eYQKX4WTdFL8onI+HDqc+SNdYJhqw7l5m1gz4j0W9oB3FhrrAq
 aQ5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:user-agent
 :mime-version;
 bh=w4/POuTWUDiZtOhUix11luXG+xnY9Yx35d0vIUWcKFE=;
 b=jK6yESb7tUMPs4tjqUu2ogc8lQ6Hr0A+FszM7uhVQK5f6J6slRDR/IoUFTaKBejkaf
 EcD9LRztP8iI9QjuJizcMmpP8mGfuEdBafEjbIeZ/180Hm+GnfmSOY8W2+4H+SJL9ik5
 xRAGQ6mlkf4WpS5erRRPwty8OFd4OGUcmB7pPzEkdrZs/e5VotNkKcNI8+RC5s/8mixd
 Mh+9wtKLiax4b3fqZ91J7H689u/daCk61Xb+MuzrIO24LPlsvnXq5VOdeaSEU9RO8DWE
 aGWIzMGW76PIV7xj3RuHc2CQD9mdlYTzdvQppdjiAf3iptf5Xw7q4b2nC1gWQuG7S1d+
 1wLA==
X-Gm-Message-State: APjAAAWP9K5sM0LBEv/a5gT/R6JKLeAOQj+RGmRIOHEL2hF/be2l94sX
 gerfahQGFIQPMZWPAuF0/kF7NA==
X-Google-Smtp-Source: APXvYqzmy+Sa3CxJDUMcVmYUrwvMkOknIMN4j2mDR0wZZEvzVGV/iFzMbPM39F1SIqcWA3tPPVvPHw==
X-Received: by 2002:a6b:7609:: with SMTP id g9mr4529225iom.130.1570911053230; 
 Sat, 12 Oct 2019 13:10:53 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 a14sm9138006ioo.85.2019.10.12.13.10.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 12 Oct 2019 13:10:52 -0700 (PDT)
Date: Sat, 12 Oct 2019 13:10:52 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: torvalds@linux-foundation.org
Subject: [GIT PULL] RISC-V updates for v5.4-rc3
Message-ID: <alpine.DEB.2.21.9999.1910121307270.18026@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_131054_976862_366E139E 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

The following changes since commit da0c9ea146cbe92b832f1b0f694840ea8eb33cce:

  Linux 5.4-rc2 (2019-10-06 14:27:30 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv/for-v5.4-rc3

for you to fetch changes up to cd9e72b80090a8cd7d84a47a30a06fa92ff277d1:

  RISC-V: entry: Remove unneeded need_resched() loop (2019-10-09 16:48:27 -0700)

----------------------------------------------------------------
RISC-V updates for v5.4-rc3

Some RISC-V fixes for v5.4-rc3:

- Fix several bugs in the breakpoint trap handler

- Drop an unnecessary loop around calls to preempt_schedule_irq()

----------------------------------------------------------------
Valentin Schneider (1):
      RISC-V: entry: Remove unneeded need_resched() loop

Vincent Chen (3):
      riscv: avoid kernel hangs when trapped in BUG()
      riscv: avoid sending a SIGTRAP to a user thread trapped in WARN()
      riscv: Correct the handling of unexpected ebreak in do_trap_break()

 arch/riscv/kernel/entry.S |  3 +--
 arch/riscv/kernel/traps.c | 14 +++++++-------
 2 files changed, 8 insertions(+), 9 deletions(-)


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
