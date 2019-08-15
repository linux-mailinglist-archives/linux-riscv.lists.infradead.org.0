Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E8F8E286
	for <lists+linux-riscv@lfdr.de>; Thu, 15 Aug 2019 03:53:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=1ZrvJA9CxcuKX5SYF8VRpl6JXSSxzPl/H1ACX1pZPs4=; b=BKECjVzn8ccNC/GU6Wh8QcCVf
	1oe+kvxWDqNxWrhwfZMm7d1CcpyS6I5jq3SxjIrh5BWdNKFvNLTRxQtikVMpZUmAHBVoAvgVwbbmV
	hlvYSqIh4X2jTe4UeGcQCAJ6c3kmDNFpqQpvoaex8EwoAVSDnTieDEzBrXz/fNJhT+1cBBF0GJ6Q0
	YLU165qd/jN4kCC0hdZmWsUTkehczV/KwL9ISb+6m65sjU0DkO598tpvTINppo8/jAKxocaMlIf7R
	3kAOou+AHYAfEFLLbpA6+ttlCJvfrQGmC900qSXzVuaJSselFntldwb/YKf6rf+a+c1XirsaCyKCx
	gWSARCFQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy4x5-0000Ce-Es; Thu, 15 Aug 2019 01:53:19 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy4x0-0000CN-C2
 for linux-riscv@lists.infradead.org; Thu, 15 Aug 2019 01:53:15 +0000
Received: by mail-pg1-x544.google.com with SMTP id n4so577308pgv.2
 for <linux-riscv@lists.infradead.org>; Wed, 14 Aug 2019 18:53:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=B+urqSWm85wzvKtnrzAL/ED40jwSYxyNjNBdxhrRvuU=;
 b=k0n8568wNHHsx6zXvAubvU8j+UJLpdwV3DXPjhBjHWiytO90eILwvNbmMyhHXPvvFh
 OmQRZw4zukae4HtVxY8cxBgO55bggVvef2Bmci6q+mRJn7GGHoWlhcA85DFwziG6hSom
 jd9nTZqqPAiI2dNUWoyDdDWXoRt+M5UuLrLedkgh9vJ7/NCAaPE7PVaUNQhQ07CXhWPX
 OXBnh7s9ZiG+CFkFPzUd+zlaKrTTtmkLznfpe1kjOGy5yuNKyXCvus0rU0aNddN2Rdgn
 1HpqOysxM8ZTMBz3CBELPSDLWAXHgfRsU0oggWry1iThcBbfLvZASjqxukZoZsF5IOBJ
 zg/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=B+urqSWm85wzvKtnrzAL/ED40jwSYxyNjNBdxhrRvuU=;
 b=pH+JdrNNyAOc21RwhHllNUiQWCgihAyTTLc9Gq5blFWblRsmErVbS+CQBYEkWD/GDe
 9o5fJzU/a8Jk2j5miLbGBdLTINRtNbzV1Ke3Kquvr3hgOXNDNz3zTDuGhGpHl2FEwu6O
 tO1agYFYJWgBm8fvm7dO492gwiZ4Lubhkt6knCdoBsE6L1251S9Xc7PLJuVuC1nODypJ
 I7z1KWgDJxcw4ArDTK5wd9dVqQzX3YznCIepQnrKMVBvF/F1Y/ywbfbcmE3bbL4heFdS
 cdrnrDQgTvh5SaU+GpubDw1/zDOPIiokF44UuaglYPolHNqyPJw83xbPgtaSNcmYFfa0
 MuWw==
X-Gm-Message-State: APjAAAV9X1tcN7SXVtCg0x9QVN7x4xcZ+vUK1LvYiXe8Wo3tI5lRIrsl
 v3L/ew84kXSTwaW9xcafTvDtRA==
X-Google-Smtp-Source: APXvYqweNZweFB0WkL9RkgxC0FIbRYfV4E4lwj7UZo12deQWJbuFOYlGUuOtHlqdw3Q2kaXl0/yDgw==
X-Received: by 2002:a62:76d5:: with SMTP id r204mr2959889pfc.252.1565833992329; 
 Wed, 14 Aug 2019 18:53:12 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id 64sm1187819pfe.128.2019.08.14.18.53.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Aug 2019 18:53:11 -0700 (PDT)
Date: Wed, 14 Aug 2019 18:53:11 -0700 (PDT)
X-Google-Original-Date: Wed, 14 Aug 2019 18:49:57 PDT (-0700)
Subject: Re: [PATCH v2 2/2] riscv: Make __fstate_clean() work correctly.
In-Reply-To: <87mugbv1ch.fsf@igel.home>
From: Palmer Dabbelt <palmer@sifive.com>
To: schwab@linux-m68k.org
Message-ID: <mhng-cde08804-6424-4966-84cb-359f3ae393fa@palmer-si-x1c4>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_185314_422389_323B03A7 
X-CRM114-Status: UNSURE (   9.52  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: vincent.chen@sifive.com, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 14 Aug 2019 15:17:18 PDT (-0700), schwab@linux-m68k.org wrote:
> On Aug 14 2019, Palmer Dabbelt <palmer@sifive.com> wrote:
>
>> On Wed, 14 Aug 2019 13:32:50 PDT (-0700), Paul Walmsley wrote:
>>> On Wed, 14 Aug 2019, Vincent Chen wrote:
>>>
>>>> Make the __fstate_clean() function correctly set the
>>>> state of sstatus.FS in pt_regs to SR_FS_CLEAN.
>>>>
>>>> Fixes: 7db91e5 ("RISC-V: Task implementation")
>>>> Cc: linux-stable <stable@vger.kernel.org>
>>>> Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
>>>> Reviewed-by: Anup Patel <anup@brainfault.org>
>>>> Reviewed-by: Christoph Hellwig <hch@lst.de>
>>>
>>> Thanks, I extended the "Fixes" commit ID to 12 digits, as is the usual
>>> practice here, and have queued the following for v5.3-rc.
>>
>> For reference, something like "git config core.abbrev=12" (or whatever you
>> write to get this in your .gitconfig)
>>
>>    https://github.com/palmer-dabbelt/home/blob/master/.gitconfig.in#L23
>>
>> causes git to do the right thing.
>
> Actually, the right setting is core.abbrev=auto (or leaving it unset).
> It lets git chose the appropriate length depending on the repository
> contents.  For the linux repository it will chose 13 right now.

Awesome, thanks!  I've updated my config :)

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
