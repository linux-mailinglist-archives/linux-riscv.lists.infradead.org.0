Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E2F8E0E6F
	for <lists+linux-riscv@lfdr.de>; Wed, 23 Oct 2019 01:03:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3CfGWoEYRlxImaCNs+2gV/W5SH/ebayEDYueVi0v7pY=; b=a9a6eMvSNya9Zi
	iG4IxGfuJOji3gCbWcwphXL8ng0bwlxdIrRVcOPFoBi7K1t+oEfDnKNIuMaKtQh8y6AsR1b1jYuM5
	uBiLjlncxPY4wk/LMb5Cp+Q7pOIJyp7RUv5Yp7cC00/xrb/OpVbXwk/q7RmSPUmgh2X2CnN0/fqs+
	nA9YHPH3SJiiQKUWxH1SZ1vKCuLrIUdhHr+3mYbM07EZ460pnAaRzV81i/40wBTPP44wPvinPjA2W
	O4QBqnkrjXTnhW9bk42ABCsEMwPv3Hoo7OtVaJxyXSj6CD7f03nsIvVDXX0lQSCyQmIzMaGivt4oi
	QzS3MTW1aCwyVmVDSZhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN3BN-0003lb-HP; Tue, 22 Oct 2019 23:03:17 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN3BJ-0003km-76
 for linux-riscv@lists.infradead.org; Tue, 22 Oct 2019 23:03:14 +0000
Received: by mail-il1-x144.google.com with SMTP id a13so2735822ilp.1
 for <linux-riscv@lists.infradead.org>; Tue, 22 Oct 2019 16:03:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:message-id:user-agent:mime-version;
 bh=FCNSpvhucdslU4xdhlUj1eji96TKzrd4QEx7zlNJdXU=;
 b=gvCCbLOIKWTljdF4xlr9PMDzTM+XPkwYupgcnkTFkWUWvEOvNUNgBK3weffnZMZNn+
 Ghs0fgjmCqPEoAg8e3W7Ff4o4zsQECeZTGFDRd83PgGZuD/lZsaPWQzEb/f0d/rfvfPo
 a/1i3Las7Uz/UnynRVaTZEl4Qbaob6K41EbYxjD0Y3pZeWTXnZc4GSEWHEHWBHxuYMsh
 33ONw0DyDd0kEJf/T+f7G1tvAvQw7SXOHR7jxmAf/63pVXIxTuBA5rE2jn3eH76CVJVi
 F5bJcvR4qUCI1RUGpPFU9GnXtVwAnIjmbBiGPtpxLG1kbPcKx5Vcjg92d5NBp4pdBqvt
 F2Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:user-agent
 :mime-version;
 bh=FCNSpvhucdslU4xdhlUj1eji96TKzrd4QEx7zlNJdXU=;
 b=EhyX8c+JIHg6/1Ag5R8Fj9I2UIKAtI8jt86hwdxzXxUHRLfiLiYLMMql/4B2HwPb18
 5WviCrCpF8y1hgHIDO7fn7KKVAO0sJ6yJiZKVpMPmAFtVV8h8DV75Es8QmOQph7AecRw
 nXaSCKOzYCyaGgeE7K3WUikmql8YKEscjQ3lfhaVpXyePRWRA3k40fktjnDC/DROWg2x
 OP+25oZtBF+6/oyVKxlbR5Jy3NOUTQhxw2qgHVhjNEbfrbf0xbRx8exwYjDrmU1zde9h
 u08jtze/hl1ZGZ93thcfcalhgL8MU6wB37rTfzLpGXCC15EtuJLWB3dSxo47SYFEJp6K
 pXOg==
X-Gm-Message-State: APjAAAVo6EYCaFfEsyvPv2egfkYKVF4QzC+wxWl3Qh4uhPsoR8OrzTFx
 0+sx0LtueAkYN2MNF60Gfxfe2w==
X-Google-Smtp-Source: APXvYqx5+7e2i1TygQBtYul2CZ+dTQLBLh4OyjITtN3933T1jRnJPAzZcgf6MWL1RshfohIFNIyYzQ==
X-Received: by 2002:a92:b00f:: with SMTP id x15mr11505916ilh.280.1571785391511; 
 Tue, 22 Oct 2019 16:03:11 -0700 (PDT)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id y5sm3011061ioa.13.2019.10.22.16.03.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2019 16:03:10 -0700 (PDT)
Date: Tue, 22 Oct 2019 16:03:08 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: torvalds@linux-foundation.org
Subject: [GIT PULL] RISC-V SECCOMP support for v5.4-rc5
Message-ID: <alpine.DEB.2.21.9999.1910221600320.25457@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_160313_287939_A50B2C2C 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
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
Cc: david.abdurachmanov@sifive.com, linux-riscv@lists.infradead.org,
 keescook@chromium.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Linus,

The following changes since commit 5bf4e52ff0317db083fafee010dc806f8d4cb0cb:

  RISC-V: fix virtual address overlapped in FIXADDR_START and VMEMMAP_START (2019-10-15 22:47:41 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv/for-v5.4-rc5

for you to fetch changes up to 7326fcbeea619b95c9b380ddee0a94f5f9ea6a48:

  riscv: add support for SECCOMP and SECCOMP_FILTER (2019-10-16 08:27:25 -0700)

----------------------------------------------------------------
RISC-V SECCOMP support for v5.4-rc5

This pull request contains a single change: the addition of SECCOMP
support for RISC-V for v5.4-rc5.  Normally, I'd consider this too
large for this point in the -rc releases.  However, we've heard that
v5.4 is likely to be a long-term support release, and adding it in now
should help the distribution and security folks.  The changes look
relatively bounded, and the only reason we've been sitting on it until
now is because we've been waiting for a trivial ack from the
tools/testing maintainer.  That hasn't come.  Since the change to that
subsystem is quite minor, we think it should be OK with her, so,
sending it now.

If you have a different opinion about whether this patch should go in
now, we're fine with requeuing it for v5.5-rc1.

----------------------------------------------------------------
David Abdurachmanov (1):
      riscv: add support for SECCOMP and SECCOMP_FILTER

 arch/riscv/Kconfig                            | 14 ++++++++++++++
 arch/riscv/include/asm/seccomp.h              | 10 ++++++++++
 arch/riscv/include/asm/thread_info.h          |  5 ++++-
 arch/riscv/kernel/entry.S                     | 27 +++++++++++++++++++++++++--
 arch/riscv/kernel/ptrace.c                    | 10 ++++++++++
 tools/testing/selftests/seccomp/seccomp_bpf.c |  8 +++++++-
 6 files changed, 70 insertions(+), 4 deletions(-)
 create mode 100644 arch/riscv/include/asm/seccomp.h

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
