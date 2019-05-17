Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE3ED211F4
	for <lists+linux-riscv@lfdr.de>; Fri, 17 May 2019 04:17:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wLaTAL1LnE/PwujrHBKz3oJFv3NKWKNG6EPXBdK2f9o=; b=sdmKDfQ/FgzOX2
	z/7J0cgw/+TVWpLPNV/gPE+Vzi0buUHp78LUAXx3qGOqzuDrRMZQeo6vmHvln2PFRw1my/a2XZWvR
	w7EMufg/SayFSF6icfWnmLDvXmN5q/bG5y0KYbxQ7BiLg8Gm3Wsw0ymLGqq26UJaSqgdQQNKGcW9s
	A8bFHn9mI6Pq5NFGEcUJXDP5u2BkS7/9DgX3ckRnpAEA+BgsU2faZd6FDeX5I1RVNYtb9sFocx5p9
	qwsDioALCiLdvEIn4hOBd/zzO8xsbOsXyMWFlukrXPUNMK+qPsZ54EwZpls2akFec8A4wpbmZPPlC
	jDCA7r7LgeHqysDLHXGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRSRI-00034N-R8; Fri, 17 May 2019 02:17:40 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRSRF-00033r-Hm
 for linux-riscv@lists.infradead.org; Fri, 17 May 2019 02:17:38 +0000
Received: by mail-lf1-x143.google.com with SMTP id f1so4142262lfl.6
 for <linux-riscv@lists.infradead.org>; Thu, 16 May 2019 19:17:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eXwn6qQiKsE/7bXRtPFAOmcUXx2LJhwM8N5rIl+lqZM=;
 b=epb6LwWIl4jMyysY/uQWtt/ktjigke6OGYLyGbgKekBewwzPRR+ms3oJwbzqNV8PBO
 4+RGQ+KOIpZloqknWaXo3iW/5Phz+Mq7U9apjgOBxpKz1O45JqWwDPwDtJpgddOmFYDw
 CgEuqiFXgh5kkAoKtLi2wdiVVQCDWRAvqlvLU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eXwn6qQiKsE/7bXRtPFAOmcUXx2LJhwM8N5rIl+lqZM=;
 b=sAS8/Is8pYyjo8ST0Hw6U6ylHkirX7G3s7ftjnLIFq98s8/3jzU7wwWMEpaKXl4jbB
 MUjfSJy3p4YlApB/3wpezQWzMc9Fn0wwYPctEkJw9QgXm84Ct0FgojwnziXc/8x+vr1i
 F04ZVlCDCE1tYmlsLydtVC7JAcw1Esrm5DQWVDh2Mb3Wx/AsE1RGYYi7zbAGmLXtm0dk
 352VB1AUAgu3oZRZTDpBgTv8I9nzzLpbSJEz+ypiK4t7kFIwapXDdMEB/FedvK2X4a5N
 i2lUPnE9g9gbmPqiZAoaJSlEJUD7o1wGWPCipI5HWBdtOwfIIQRE5YSzNTPWeK02+pRr
 Jn1g==
X-Gm-Message-State: APjAAAUbrd3hY+qutWb6kg9pX+hJHdW/7h/NYQEItgjRbUJi44LnYoHU
 slhYChOOqJzc1odEVupu3Dbbx4I+K7E=
X-Google-Smtp-Source: APXvYqyfqPZZ0L2evDqFnuWgtNHV+/cCY8Io2+rsWEeZ435Hfs/+hc7db3SUlkaFKmzxx0Ge3qsaSw==
X-Received: by 2002:a19:97c8:: with SMTP id
 z191mr25161164lfd.167.1558059454750; 
 Thu, 16 May 2019 19:17:34 -0700 (PDT)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com.
 [209.85.208.177])
 by smtp.gmail.com with ESMTPSA id c19sm1247679lfi.69.2019.05.16.19.17.33
 for <linux-riscv@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 19:17:33 -0700 (PDT)
Received: by mail-lj1-f177.google.com with SMTP id j24so4895786ljg.1
 for <linux-riscv@lists.infradead.org>; Thu, 16 May 2019 19:17:33 -0700 (PDT)
X-Received: by 2002:a2e:9b0c:: with SMTP id u12mr4110865lji.189.1558059453268; 
 Thu, 16 May 2019 19:17:33 -0700 (PDT)
MIME-Version: 1.0
References: <mhng-5ac66c65-9c46-409c-a5fb-a6551bb206c5@palmer-si-x1e>
In-Reply-To: <mhng-5ac66c65-9c46-409c-a5fb-a6551bb206c5@palmer-si-x1e>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 16 May 2019 19:17:17 -0700
X-Gmail-Original-Message-ID: <CAHk-=wiHtaVsbK4dZ79_h0R307Qv-Fdgdkp3SZ+F+QvzHHGrOQ@mail.gmail.com>
Message-ID: <CAHk-=wiHtaVsbK4dZ79_h0R307Qv-Fdgdkp3SZ+F+QvzHHGrOQ@mail.gmail.com>
Subject: Re: [GIT PULL] RISC-V Patches for the 5.2 Merge Window, Part 1 v2
To: Palmer Dabbelt <palmer@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_191737_592050_0C5F8AFF 
X-CRM114-Status: UNSURE (   7.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-riscv@lists.infradead.org,
 Linux List Kernel Mailing <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 5:27 PM Palmer Dabbelt <palmer@sifive.com> wrote:
>
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/palmer/riscv-linux.git tags/riscv-for-linus-5.2-mw1

Oh no no no.

You're creating a binary file from your build or something like that:

>  modules.builtin.modinfo                            | Bin 0 -> 46064 bytes

which is completely unacceptable.

I have no idea what you're doing, but this kind of "random garbage in
git commits" is not going to fly. And the fact that you're adding
random files really means that you are doing something *horribly*
wrong.

               Linus

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
