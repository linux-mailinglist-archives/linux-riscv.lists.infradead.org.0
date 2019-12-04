Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B43111353B
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Dec 2019 19:56:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:In-Reply-To
	:Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=GrTDw7KQHR9Zr6li1nTe2wl4QZFVN56MIBJeTe4Eo8k=; b=C4T2LcD82P+FLe
	VtI9U6gu/Eddu3Da/HvAk9vFH+Z5MntoRkbWzqN1LE/Nz+VZ9vuKkLraCzM9MozTedEmegAaP6B3X
	Wj3IVWlXA9FaAcLS0Rqp8Zl6FU/0WSyZeViZhpb/71ADlAli6oeTVRZvgKqjFot1dVXfZh0r3XF6c
	MZ4EaEdf3yVd7v4RUObY+Ldz3qbyVZAlZ/tbiKxt4gGS6/kggxkPhk2KFJwq3U+NF9qLJR0X4qHFV
	G2qyQlRYivmQAvP4x7Y+lgWPNH21F636r0PWC3xBlj0kVEd9p3UXvXTvYKJYTWVIksfaAQLLSYZ3o
	9MM/OaATBvLo/GnqVdOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icZpB-0002EK-0A; Wed, 04 Dec 2019 18:56:33 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icZp7-0002Dz-V6
 for linux-riscv@lists.infradead.org; Wed, 04 Dec 2019 18:56:31 +0000
Received: by mail-pg1-x543.google.com with SMTP id l24so301013pgk.2
 for <linux-riscv@lists.infradead.org>; Wed, 04 Dec 2019 10:56:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:subject:in-reply-to:cc:to:message-id:mime-version
 :content-transfer-encoding;
 bh=GrTDw7KQHR9Zr6li1nTe2wl4QZFVN56MIBJeTe4Eo8k=;
 b=LXRQoSCXDDzGjopeIkIgLn0pJfsK8cqywHU+y97e1KdZyOyYx/gPKaZyxcIpuPXupx
 ymgBf/yz1Ar9s52nRWKEQViqQDQDRnLWuNuPEMvYiSuJ5ltwTer2wA11zDeygYopmzWC
 AT0a6zOZ5KJ4z90fM1BSRk4BPfgPxlJZtAn7yfhY8qnnYlP69/lnHC/NYnb5RIn5zk6p
 RhpaRjpQyzFafVefqQz1v0JP4ooQTefm8NvFYKqzPrpvYSsnnDyUyqHUGDyBUGvbbNRO
 94IEDAIs9KGpGB1STeLpNZvMzz73MVed+6HZTj/aBiDzpCydD/dbjsiPvi+mpdapgbe7
 yfsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:in-reply-to:cc:to:message-id
 :mime-version:content-transfer-encoding;
 bh=GrTDw7KQHR9Zr6li1nTe2wl4QZFVN56MIBJeTe4Eo8k=;
 b=AU4XIAybaMhAkwq72ma4t9Fa4Fm+l/T65f9ypMXV2ma8+dqJXg2SF9+4sYoyRBFbdF
 n5p4DpzdVSv0N3WlhwvE2PdWzvlcWLEIjK8g8+iefn8H6ywj7VAecwM0HdGO53Mu6TOv
 tsOINqQ5jZTbFcxQAmu4IkrxWEhpaX439pR3BnSgwKX5TMgLRaq4KM/wwp9eI/a8kYsk
 9kxAAGls1EC9Qqm1MCQuXnMhxXIwCo0mfREiOWpMbILkhdzQk+riEIOs6n0hqupaWua7
 FU1bdM0g9nBU6FlVCw0d9zoalUuy5rTKQkY+GQTnXV0EhzYTSSQrcvkQaJ/XrRQqR6iS
 AunA==
X-Gm-Message-State: APjAAAU3bDfosUWVnVrTM06Be5LmDhkJznkLi+vpBZVWltXCjGN/QG5t
 +Zo9sP/TKQQUCPjT79Ir8eFTtg==
X-Google-Smtp-Source: APXvYqzldcvtOJEAnDxB1swtWUECL8KXNDu21UIbDRV+iIzG32ZNOnlVsAiwtPDsWhDU9jnDN64qzw==
X-Received: by 2002:a63:ca4d:: with SMTP id o13mr5025430pgi.360.1575485788875; 
 Wed, 04 Dec 2019 10:56:28 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:7f69:cd98:a2a2:a03d])
 by smtp.gmail.com with ESMTPSA id f13sm9160328pfa.57.2019.12.04.10.56.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 10:56:28 -0800 (PST)
Date: Wed, 04 Dec 2019 10:56:28 -0800 (PST)
X-Google-Original-Date: Wed, 04 Dec 2019 10:56:12 PST (-0800)
From: Palmer Dabbelt <palmerdabbelt@google.com>
X-Google-Original-From: Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH v5 0/4] Add support for SBI v0.2 
In-Reply-To: <20191126190503.19303-1-atish.patra@wdc.com>
To: Atish Patra <Atish.Patra@wdc.com>
Message-ID: <mhng-fc56738d-7643-4125-b6f7-486afb948a53@palmerdabbelt-glaptop>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_105630_028725_03497CBB 
X-CRM114-Status: GOOD (  17.52  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: aou@eecs.berkeley.edu, alexios.zavras@intel.com, anup@brainfault.org,
 linux-kernel@vger.kernel.org, rppt@linux.ibm.com,
 Atish Patra <Atish.Patra@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, tglx@linutronix.de, han_mao@c-sky.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 26 Nov 2019 11:04:59 PST (-0800), Atish Patra wrote:
> The Supervisor Binary Interface(SBI) specification[1] now defines a
> base extension that provides extendability to add future extensions
> while maintaining backward compatibility with previous versions.
> The new version is defined as 0.2 and older version is marked as 0.1.
>
> This series adds support v0.2 and a unified calling convention
> implementation between 0.1 and 0.2. It also add other SBI v0.2
> functionality defined in [2]. The base support for SBI v0.2 is already
> available in OpenSBI v0.5. This series needs additional patches[3] in
> OpenSBI.
>
> Tested on both BBL, OpenSBI with/without the above patch series.
>
> [1] https://github.com/riscv/riscv-sbi-doc/blob/master/riscv-sbi.adoc
> [2] https://github.com/riscv/riscv-sbi-doc/pull/27
> [3] http://lists.infradead.org/pipermail/opensbi/2019-November/000738.html
>
> Changes from v4->v5
> 1. Fixed few minor comments related to static & inline.
> 2. Make sure that every patch is boot tested individually.
>
> Changes from v3->v4.
> 1. Rebased on top of for-next.
> 2. Fixed issuses with checkpatch --strict.
> 3. Unfied all IPI/fence related functions.
> 4. Added Hfence related SBI calls.
> 5. Moved to function pointer based boot time switch between v01 and v02 calls.
> Changes from v2->v3.
> 1. Moved v0.1 extensions to a new config.
> 2. Added support for relacement extensions of v0.1 extensions.
>
> Changes from v1->v2
> 1. Removed the legacy calling convention.
> 2. Moved all SBI related calls to sbi.c.
> 3. Moved all SBI related macros to uapi.
>
> Atish Patra (4):
> RISC-V: Mark existing SBI as 0.1 SBI.
> RISC-V: Add basic support for SBI v0.2
> RISC-V: Introduce a new config for SBI v0.1
> RISC-V: Implement new SBI v0.2 extensions
>
> arch/riscv/Kconfig           |   6 +
> arch/riscv/include/asm/sbi.h | 177 +++++++-----
> arch/riscv/kernel/Makefile   |   1 +
> arch/riscv/kernel/sbi.c      | 547 ++++++++++++++++++++++++++++++++++-
> arch/riscv/kernel/setup.c    |   2 +
> 5 files changed, 660 insertions(+), 73 deletions(-)

There's a few issues with the implementation, but I think the bigger question
is what do to with the spec.  The SBI stuff sort of snuck in to Linux without
actually having a proper spec written down, so I'm happy to just say "let's
take the 0.2 stuff as soon as it's frozen" as we're at least in a better spot
than with the legacy stuff.  Nominally we'd need to wait for a ratified
specification here, which probably means a 1.0 specification, but that's a way
off and I don't want to just sit around on the legacy stuff.

