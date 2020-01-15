Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E543213CE20
	for <lists+linux-riscv@lfdr.de>; Wed, 15 Jan 2020 21:36:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:References:
	In-Reply-To:To:Subject:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Kq7E7yB24oMF+8U5r1ALJcHmpKEZz9xaZhS6OI6Yd4=; b=Dn6Pmn449g0yRH
	LCV6o+E2SEqTYsWIKZn2+9SJMadev4VPAopVPt5Qo+Hy99wIO7TlZ6m6zu6ywOc+gOyUhjtQuxElG
	Av/A+h9ct8yBAYZN4riqgNrTtTWM1U0g2Ofuc4V3t21dlhg1pNLl/URoQpkUJ5eeKetGqFdWAWf0p
	1uYRb2EvSJAZQbOdh6cQ5D/fyQZnM4im6KUs0rIBp0zwyRoW9xpthYRJ0dPSBwaJ59KA9jupmwVJv
	7E/UqMgSfzEC5GdxZgR4qYXkAbQUaD7y/4ZzGVH/LZ5aeYMkDzRfmW11R+0fxj1KNGJaNfJvCTGkv
	590Tx9CMdeyrIrhFCMaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irpOc-0004vB-Kw; Wed, 15 Jan 2020 20:36:10 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irpOV-0004uO-R8
 for linux-riscv@lists.infradead.org; Wed, 15 Jan 2020 20:36:08 +0000
Received: by mail-pl1-x643.google.com with SMTP id a6so7327578plm.3
 for <linux-riscv@lists.infradead.org>; Wed, 15 Jan 2020 12:36:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:subject:cc:to:in-reply-to:references:message-id
 :mime-version:content-transfer-encoding;
 bh=1Kq7E7yB24oMF+8U5r1ALJcHmpKEZz9xaZhS6OI6Yd4=;
 b=ZRg8LUg4vdi4RxUvpoJXMnuBXx2F26/54JF3ieqqhSeu7kjxGyhT3/oddQU+q8Z7s7
 lPZa8OTSazVRRzSMR8O5oJUem5OpTjPZ8TBG8fqQlAxUi80tRp1f9DnexBuFtgR9j1Jp
 +hjK5uojBbqE0LgCgcb3JBW37j3ksV4VrI1nWftapInUH+PU/aHhvgspg9Q9rMFpCDVD
 g3+S9ykt3mK73wKLYpHXFBFszLEYgx+/tDIubNkMAhVmrkHyNo33UZs5HnaxiFNcDGMS
 aj6mybsFjceeC42Co5zGOEz3owBKFRAiHwkJRGDKX6+uBP/spgAmYSGlcUZ7lGeJUpe0
 Iyyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:cc:to:in-reply-to:references
 :message-id:mime-version:content-transfer-encoding;
 bh=1Kq7E7yB24oMF+8U5r1ALJcHmpKEZz9xaZhS6OI6Yd4=;
 b=Zq2fx5XmI3j4DO6VLl6CdFTUnslNI8bQ3i1+bGhkNJjtcyk5e42qDe3+Isa7DTjOSB
 FcGEpECfyYCVMh8L1uOkxRXkFlUVYG/cb6UEK4S1OAjMalH7IbyjACOiW5GoUMV6rUV+
 D+a0z+OIad/6M6EWnIh3HTnZbpGpIxOrbcq1W8FtF4Phbnj9DJvOkObSl0+QbONZM1Cv
 IVKyC7SzVX7MEfov7tcScI7rWomHz03c0c06yzzX+Hr0QKh6QlPwJL26E9SHdRny5RyS
 cmi9TsSRjiVcezRi/coYabObb89IQqcAYOKFwsYH8yrO3F0zPtMOWFZ/QYLHbi6R903R
 9wqg==
X-Gm-Message-State: APjAAAU35gpmsf7rVPcwIxNt2x/g1FZNLkymIiLXaLN6UtqdxTjytW0x
 eUtik1DvNF5ZtsLFdCtYV++h5w==
X-Google-Smtp-Source: APXvYqxwjKrQRKb5VvbIT0wsat36G6HJjkLFrgS7bVZJZ0KZ6aWzfUG3AL9YY+kuQq+0Qh+1xnNlIQ==
X-Received: by 2002:a17:902:9885:: with SMTP id
 s5mr28095711plp.217.1579120563073; 
 Wed, 15 Jan 2020 12:36:03 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:7f69:cd98:a2a2:a03d])
 by smtp.gmail.com with ESMTPSA id h11sm21070101pgv.38.2020.01.15.12.36.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2020 12:36:02 -0800 (PST)
Date: Wed, 15 Jan 2020 12:36:02 -0800 (PST)
X-Google-Original-Date: Wed, 15 Jan 2020 12:35:41 PST (-0800)
From: Palmer Dabbelt <palmerdabbelt@google.com>
X-Google-Original-From: Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH v6 0/5] Add support for SBI v0.2 
To: Atish Patra <Atish.Patra@wdc.com>
In-Reply-To: <20191218213918.16676-1-atish.patra@wdc.com>
References: <20191218213918.16676-1-atish.patra@wdc.com>
Message-ID: <mhng-9ed825c6-0972-46ac-aeac-89a57bf73cac@palmerdabbelt-glaptop>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_123603_900633_844B34D0 
X-CRM114-Status: GOOD (  15.23  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: aou@eecs.berkeley.edu, anup@brainfault.org, atishp@atishpatra.org,
 linux-kernel@vger.kernel.org, rppt@linux.ibm.com,
 Atish Patra <Atish.Patra@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, tglx@linutronix.de
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 18 Dec 2019 13:39:13 PST (-0800), Atish Patra wrote:
> The Supervisor Binary Interface(SBI) specification[1] now defines a
> base extension that provides extendability to add future extensions
> while maintaining backward compatibility with previous versions.
> The new version is defined as 0.2 and older version is marked as 0.1.
>
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
> Changes from v5->v6
> 1. Fixed few compilation issues around config.
> 2. Fixed hart mask generation issues for RFENCE & IPI extensions.
>
> Changes from v4->v5
> 1. Fixed few minor comments related to static & inline.
> 2. Make sure that every patch is boot tested individually.
>
> Changes from v3->v4.
> 1. Rebased on for-next.
> 2. Fixed issuses with checkpatch --strict.
> 3. Unfied all IPI/fence related functions.
> 4. Added Hfence related SBI calls.
>
> Changes from v2->v3.
> 1. Moved v0.1 extensions to a new config.
> 2. Added support for relacement extensions of v0.1 extensions.
>
> Changes from v1->v2
> 1. Removed the legacy calling convention.
> 2. Moved all SBI related calls to sbi.c.
> 3. Moved all SBI related macros to uapi.
>
> Atish Patra (5):
> RISC-V: Mark existing SBI as 0.1 SBI.
> RISC-V: Add basic support for SBI v0.2
> RISC-V: Add SBI v0.2 extension definitions
> RISC-V: Introduce a new config for SBI v0.1
> RISC-V: Implement new SBI v0.2 extensions
>
> arch/riscv/Kconfig           |   6 +
> arch/riscv/include/asm/sbi.h | 178 +++++++-----
> arch/riscv/kernel/sbi.c      | 522 ++++++++++++++++++++++++++++++++++-
> arch/riscv/kernel/setup.c    |   2 +
> 4 files changed, 635 insertions(+), 73 deletions(-)

Thanks.  I had a few comments on the spec, but this looks good given what's in
the draft.

