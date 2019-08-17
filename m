Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 493BE90BE3
	for <lists+linux-riscv@lfdr.de>; Sat, 17 Aug 2019 03:26:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UAPEzRE1/DyGXcfrbP07sastcUYEL1tW8a5/Tgljt1E=; b=b82ppn52W+lLZr
	BjFc0d5mL+zpohApDPJGVg99FTmNoM4DOte4gj0y1Ft/+ztoP+2goIjv19Qsp40WB/howWTcIZzDM
	il5uUN/rGD2oiGrhppHbJNTAw5MTyv5oS17n///uxejAsLfFVhe6xdEFy1wE0a3jjRZmIKOQw+2vf
	g+KNjGBbNai2fMYUfHKxbU6emXi1FZUWJtkrGYWGjMynXPlKtvAjR+H7Sh2Wq+JMq99tCt2hvu10Z
	P0ouggJBXH/4WIZ50TJzy5o7sIyUB7Ut3RS44plqedpT1QqHeouiSmERaL1QtSBQrJm7BJuMt5UAT
	+6dDs5Sa3FMsO0zTmhBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hynTc-0005eA-EK; Sat, 17 Aug 2019 01:25:52 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hynTY-0005dl-NW
 for linux-riscv@lists.infradead.org; Sat, 17 Aug 2019 01:25:50 +0000
Received: by mail-io1-xd41.google.com with SMTP id j6so9842174ioa.5
 for <linux-riscv@lists.infradead.org>; Fri, 16 Aug 2019 18:25:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:message-id:user-agent:mime-version;
 bh=r3OpJwbBDOwHPxJNtLJ3xBe/K17VIy9hFFgeMpXJq1Y=;
 b=mn01vxM/ek1dPiMc2W5VTlT+qImlJM53Q9PD789aJvUjL3fSgBbxIfFa/ykojjwa7+
 6M6Bt/qyCmeC1fKdyIZGe+w1G5mMstDPo8Ex8ArbaCnmYlVQET+KV1gKRS+HIF64+SPB
 jH3tpgeRRD7CzvUots1qawLofT8sZYg4e3AQWbA2r8m+Y8eSfvuSSVM/f6Gp6PnIGfkf
 dCopj7TlLO9U32tpKqflDVSblTPFZg6hS9RxZBP9X2j+7UtzLhxIYKq1Tk4MNijMSlAr
 04zTjPzvj9K3gCr5OtRTfMD+/8TZu10jrQ8R82uh5ikrKLkdA5f1N8ayldLdocma+OKq
 1k4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:user-agent
 :mime-version;
 bh=r3OpJwbBDOwHPxJNtLJ3xBe/K17VIy9hFFgeMpXJq1Y=;
 b=LEGzFFVThW50DUgnSFa6DX+Q+T4ebv7YFwxfrgj6cDQN+pjVYNvHF6FGqWj5T/gwZ/
 gibLIdOsf9v2LRilUdbtKiNpbIHK+3z4IfUuFm6YDOAgGOQnj+HLzg1oIdAc7FVkjg7M
 ah7y54SQyyUp1w69XWr8TBErPDjz9Cr5dWP/WpACsIucZcFVGqRMHp+y7QHMuAqzVEYq
 LQGPvp+X/bWMm/EgwpSZQe79GODFuM4rJCO9G61sX7j5zm2mLeU5qEJDi5x86e9yDsyX
 WCw/KzrMdmt0zzLMWAzvKRjhoFQJnZtycB4ILj5SToEOxBh9n3sI5rp0aVjacOJA/Nsq
 cNfA==
X-Gm-Message-State: APjAAAXTRJYa2Z6sIZhQW4RV8N2VzJjhWrwE5swH365AlcSAPWnZ3Z20
 AeO1rb+m4xy0hhDESasDQsoFDw==
X-Google-Smtp-Source: APXvYqyvJdjvTmwp85J3CXa05ry4xmaYqztXglK2aB7PWLhYu7RK5iBqLq8Ue5UYZUOc45RtFDc7Xw==
X-Received: by 2002:a6b:d006:: with SMTP id x6mr4073667ioa.218.1566005141854; 
 Fri, 16 Aug 2019 18:25:41 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 e12sm15282871iob.66.2019.08.16.18.25.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Aug 2019 18:25:41 -0700 (PDT)
Date: Fri, 16 Aug 2019 18:25:40 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: torvalds@linux-foundation.org
Subject: [GIT PULL] RISC-V updates for v5.3-rc5
Message-ID: <alpine.DEB.2.21.9999.1908161824300.18249@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_182548_831002_F1AD60BD 
X-CRM114-Status: UNSURE (   8.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

The following changes since commit d45331b00ddb179e291766617259261c112db872:

  Linux 5.3-rc4 (2019-08-11 13:26:41 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv/for-v5.3-rc5

for you to fetch changes up to 69703eb9a8ae28a46cd5bce7d69ceeef6273a104:

  riscv: Make __fstate_clean() work correctly. (2019-08-14 13:20:46 -0700)

----------------------------------------------------------------
RISC-V updates for v5.3-rc5

These updates include:

- Two patches to fix significant bugs in floating point register
  context handling

- A minor fix in RISC-V flush_tlb_page(), to supply a valid end
  address to flush_tlb_range()

- Two minor defconfig additions: to build the virtio hwrng driver by
  default (for QEMU targets), and to partially synchronize the 32-bit
  defconfig with the 64-bit defconfig

----------------------------------------------------------------
Alistair Francis (2):
      riscv: rv32_defconfig: Update the defconfig
      riscv: defconfig: Update the defconfig

Paul Walmsley (1):
      riscv: fix flush_tlb_range() end address for flush_tlb_page()

Vincent Chen (2):
      riscv: Correct the initialized flow of FP register
      riscv: Make __fstate_clean() work correctly.

 arch/riscv/configs/defconfig       |  2 ++
 arch/riscv/configs/rv32_defconfig  |  3 +++
 arch/riscv/include/asm/switch_to.h |  8 +++++++-
 arch/riscv/include/asm/tlbflush.h  | 11 +++++++++--
 arch/riscv/kernel/process.c        | 11 +++++++++--
 5 files changed, 30 insertions(+), 5 deletions(-)

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
