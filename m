Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4DD221263
	for <lists+linux-riscv@lfdr.de>; Fri, 17 May 2019 05:07:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=Sauz5wRvL5fxzEAh550akMjWBUvVW/TQdPHev6w2aK0=; b=Ya5tQyoOu3TNeJ4XW/K7QVa8i
	ycsJIn1T+kqONTXF7MMPghpyvl3inyCdMndtRS2Fkhh6igwHnw5PMB5k0ZHM8U7KIr6Bcy+Nk1eCc
	qvlvM2GICBghsV5jjIFhVy7u+E4jJYvZC6ySowAUnifTPOh1xh3Ow8ClKgLcYLRsWx3y+KhI54UlB
	JIBE4kaqfxL7dyB7KNOWI7sGY96pp83jx+1Zu43E9OdfLobcRppMXqDRXjunyCLTLLFadxSBqc1x3
	i9FyN4mSR/43G/DDFMj2RTeqzEbHn4iEpoMAqD/ljQMD8973AHjGs8blngYVtbeKF/BS+8ea3VSfo
	+/sWPeiZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRTDI-0002w6-RC; Fri, 17 May 2019 03:07:16 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRTDF-0002vj-Mn
 for linux-riscv@lists.infradead.org; Fri, 17 May 2019 03:07:15 +0000
Received: by mail-pf1-x443.google.com with SMTP id b76so2913943pfb.5
 for <linux-riscv@lists.infradead.org>; Thu, 16 May 2019 20:07:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=FZNWxHTVVazhA67ePeSz4ohY5K2eznCmCbVszKkx2ic=;
 b=DLcmwJ7nnYLQe72jJlkAUswlLL+NOQBPFn9y3+U2J4kLpsuMrsxRXrjd9aiVUuIJE2
 X3VLK5vbn3ZiG1JcjRhSpCKl+npdRGjtKBQ6osrSfcE0laytjtQfmvJMfjon6l6UjWi/
 bjqRGqA/+Wb8Ns2ysDJMuAmlBY07U8X2hDV9DPPGk8L4i0h/MVpEdTuPUccv879/2iMm
 g8CWMAjea6s4QK1OIUxL84j/NqwUJgzCgdMzqKq/X+bApDvU30p0J/uKkvoAWefMX54i
 AKB/Zke2oLMUJ+Og4U5F8a5awaDCc0E65eCbbh2HcYQx45RuIFuFRUIk8mgUOIZPJQDO
 RgvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=FZNWxHTVVazhA67ePeSz4ohY5K2eznCmCbVszKkx2ic=;
 b=hadeVqn8UP7qKNos5zKuGG3uEVf6L/szH/l0wwyoOd6JdFLtaG+k8dAaDyzg2TRfp1
 JWVyQbuCb/tZmVYbXb/vagToO4lY+cNBaPHInWcgW/VHPeg88IMQUU6JUoeIeAwL18I/
 Z9by1RoiygVpb0LXX+CB3jNNit2BLeTiCFicvfACF8lZ3FKa1U3ODS3XemA3q/BOBwKe
 Ww9l4pLC0tAmNhndwdJdbIXhWJLgyjeJQOOZRZcCoGrDIjEwlgMdSNYtNrqNLBRo+b9T
 1WrzBHTxEdyBmIy4KEh+lo0dw8md7tl1+EvRJfM+KAGfNe64xenlalqNJFN1qzm8FMTz
 sRzg==
X-Gm-Message-State: APjAAAW8MVTbMRXv+D36/zbvWRb0WZxpOAKYbW+5ZWJP5SS/CwuiQSOQ
 fX/Opy0PgijMnzArrDyEa7ueTHyhPnezVw==
X-Google-Smtp-Source: APXvYqxbrbT/9Hskd59wqO3wHnRWgHNYD5k/CuNpwGHBcIvTOn4QsIlcnQzYxve7UkaQYITC5nCPlA==
X-Received: by 2002:a62:5653:: with SMTP id k80mr57023417pfb.144.1558062429706; 
 Thu, 16 May 2019 20:07:09 -0700 (PDT)
Received: from localhost (c-67-161-15-180.hsd1.ca.comcast.net. [67.161.15.180])
 by smtp.gmail.com with ESMTPSA id b32sm7377740pgm.87.2019.05.16.20.07.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 20:07:08 -0700 (PDT)
Date: Thu, 16 May 2019 20:07:08 -0700 (PDT)
X-Google-Original-Date: Thu, 16 May 2019 20:05:15 PDT (-0700)
Subject: Re: [GIT PULL] RISC-V Patches for the 5.2 Merge Window, Part 1 v2
In-Reply-To: <CAHk-=wiHtaVsbK4dZ79_h0R307Qv-Fdgdkp3SZ+F+QvzHHGrOQ@mail.gmail.com>
From: Palmer Dabbelt <palmer@sifive.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <mhng-dd3bf038-f2d1-4318-af23-018200dd31af@palmer-mbp2014>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_200713_774152_A9C86424 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
X-Mailman-Version: 2.1.21
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 16 May 2019 19:17:17 PDT (-0700), Linus Torvalds wrote:
> On Thu, May 16, 2019 at 5:27 PM Palmer Dabbelt <palmer@sifive.com> wrote:
>>
>>
>>   git://git.kernel.org/pub/scm/linux/kernel/git/palmer/riscv-linux.git tags/riscv-for-linus-5.2-mw1
>
> Oh no no no.
>
> You're creating a binary file from your build or something like that:
>
>>  modules.builtin.modinfo                            | Bin 0 -> 46064 bytes
>
> which is completely unacceptable.
>
> I have no idea what you're doing, but this kind of "random garbage in
> git commits" is not going to fly. And the fact that you're adding
> random files really means that you are doing something *horribly*
> wrong.

Sorry, I have no idea how I missed that.  It looks like I managed to screw
something up while trying to fix up that patch, but I'm not really sure what I
did.  I'll try to figure out how to not screw it up next time.

Thanks for catching this!

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
