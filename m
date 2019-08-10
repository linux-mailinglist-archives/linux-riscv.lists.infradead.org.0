Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 664B788E96
	for <lists+linux-riscv@lfdr.de>; Sat, 10 Aug 2019 23:52:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DjhPcpihp190cpXb1Da+LKgPNhzmB/EckzmjsrwGpEM=; b=TM2kWUX1Aq6xBH
	eKTr47uoiMkHed2UkC/2NnSMdAxrC7PCQRHW1QzjkU43CzKJHBQUQCCp5lRYrmX4q0QlIPFVXDBWY
	FUtLO3YLRvAH8sGzCrp54E5IWs2+9Es4hGrN5Fy5KCYgIMySR8pLWtG/CNtZIANqla5XxCdbAydSC
	8YWL49ITzvpRSl8Oky9wZsi65QDdYVDSVOqgbyQvTDHuXN4DP82EaHFilgGyNJ07nesGLtE6Z4nCI
	HhmyoB8g89BrCh9JEZr/IGqi/6UPJOWaX6ja+mhzpn5+AGMcJTyL2EZ2zRgWDlWG2jXg22kGGneyp
	nms/qSeRPj05suJrAj7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwZHP-0002c6-6u; Sat, 10 Aug 2019 21:52:03 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwZHL-0002bh-23
 for linux-riscv@lists.infradead.org; Sat, 10 Aug 2019 21:52:01 +0000
Received: by mail-ot1-x343.google.com with SMTP id q20so145959677otl.0
 for <linux-riscv@lists.infradead.org>; Sat, 10 Aug 2019 14:51:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:message-id:user-agent:mime-version;
 bh=BXzhJMcP8sUrbiDUCA84lEyIOcPFyZ1BvR0HhIB3IoA=;
 b=SMl+5KtTl/n9Ap142CBKocbUdrfTmsY30zKYh4Z6ioty7GXFoGlJTXcPy3/Of7D4FT
 xN67MbSWu9WhaedfinFmyl4/RuFsB6yxKlY/fL4YV3mVDtvxfv5dC4fBnI3wqDZz1LDY
 mAH6LQ6NJBDHkSCmO78vQ6VB6dqHBP/6/LZcsKrkrHTFiL5YnSSgqGmEhP8lFu5XRs5d
 ZABK7t1fRYaEZ0PlIfSYY4QYDY0jxLxL08Kjkx039Rwii1pfSzsXDyeyJG02qIbXVZ4D
 kXzJ+A3qM0JZZIvwbco4Ew0uA4KD1+bHgh2vOVRTBiPoLZ4uJYsfUhl9uuSoSLw+qoGd
 ypgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:user-agent
 :mime-version;
 bh=BXzhJMcP8sUrbiDUCA84lEyIOcPFyZ1BvR0HhIB3IoA=;
 b=mGsLfzWN7HWaqQULpUHHtJpVz/a+7JTkrp5eXIEdEnmbFTv4uXMRfr568Yy307enDh
 6FSm3jeatxNtdRfCRlUqSMvYWP8jJfmSHkrcHYIeeT5RpkU/W4Q4Qtna9kA/w0jrOO6S
 omcaT12o3Pw3mr2cuaAu/D9KMaZvXICxGeYfBjvBX0Fkr8bKymhkrirFfbbOVVbc5zKH
 yrQTi76iTbz9qezxJnjbTZfjVrn/2eLFseQIycO28dsh/OFQuengMCIhqeqtBUzRwUL5
 6eNyVUP7Q5du+Pm+lTGat8FWN9UzWwSmKCcD2j6iNmjbwL1R45OEF0qZ2weFbTGnMueH
 gLrg==
X-Gm-Message-State: APjAAAUS7zVYwX9SW1T3tOAZMC0kvcSqlo40FgCAwLhHzUYJ+Y6UPPl9
 FOX3uIOkW950gZKEVwHCpxst8F+jEjk=
X-Google-Smtp-Source: APXvYqw975ALnEQ7gqJUAF1qVfME8rEeVeTWqcDdVogCmy40Ah4etxLC0gnFpyhMM3OYNIzP/TPLnw==
X-Received: by 2002:a02:c9d8:: with SMTP id c24mr8346028jap.38.1565473917462; 
 Sat, 10 Aug 2019 14:51:57 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 k6sm8386344iob.11.2019.08.10.14.51.56
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 10 Aug 2019 14:51:57 -0700 (PDT)
Date: Sat, 10 Aug 2019 14:51:56 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: torvalds@linux-foundation.org
Subject: [GIT PULL] RISC-V updates for v5.3-rc4
Message-ID: <alpine.DEB.2.21.9999.1908101451050.22177@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_145159_113277_0A79CDB4 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

The following changes since commit e21a712a9685488f5ce80495b37b9fdbe96c230d:

  Linux 5.3-rc3 (2019-08-04 18:40:12 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv/for-v5.3-rc4

for you to fetch changes up to b390e0bfd2996f1215231395f4e25a4c011eeaf9:

  dt-bindings: riscv: fix the schema compatible string for the HiFive Unleashed board (2019-08-08 16:05:38 -0700)

----------------------------------------------------------------
RISC-V updates for v5.3-rc4

A few minor RISC-V updates for v5.3-rc4:

- Remove __udivdi3() from the 32-bit Linux port, converting the only
  upstream user to use do_div(), per Linux policy

- Convert the RISC-V standard clocksource away from per-cpu data structures,
  since only one is used by Linux, even on a multi-CPU system

- A set of DT binding updates that remove an obsolete text binding in
  favor of a YAML binding, fix a bogus compatible string in the schema
    (thus fixing a "make dtbs_check" warning), and clarifies the future
      values expected in one of the RISC-V CPU properties

----------------------------------------------------------------
Atish Patra (2):
      RISC-V: Remove per cpu clocksource
      dt-bindings: Update the riscv,isa string description

Palmer Dabbelt (1):
      RISC-V: Remove udivdi3

Paul Walmsley (3):
      riscv: delay: use do_div() instead of __udivdi3()
      dt-bindings: riscv: remove obsolete cpus.txt
      dt-bindings: riscv: fix the schema compatible string for the HiFive Unleashed board

 Documentation/devicetree/bindings/riscv/cpus.txt   | 162 ---------------------
 Documentation/devicetree/bindings/riscv/cpus.yaml  |  16 ++
 .../devicetree/bindings/riscv/sifive.yaml          |   2 +-
 arch/riscv/lib/Makefile                            |   2 -
 arch/riscv/lib/delay.c                             |   6 +-
 arch/riscv/lib/udivdi3.S                           |  32 ----
 drivers/clocksource/timer-riscv.c                  |   6 +-
 7 files changed, 24 insertions(+), 202 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/riscv/cpus.txt
 delete mode 100644 arch/riscv/lib/udivdi3.S

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
