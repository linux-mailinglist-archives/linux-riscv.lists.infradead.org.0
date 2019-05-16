Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4F7D1FD95
	for <lists+linux-riscv@lfdr.de>; Thu, 16 May 2019 03:56:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=a/B5SCJqZddJWEjVlZnflv2vahuA4TIYTS7ku5hVdXQ=; b=gVBAwyBu1wKXZXupcO1xuMogu
	sgll5DsC9cc9qjEjZ2csV2MZJXjsUEjJsLtzFIPCsjQQwm407FvkILdHCFVm1wLj1sqm8vmIeWdUP
	ksPjLmmR4BWmL/Ic8bnUoOGfSsiHpvRVn4Cl2UchQqPzZ9SIT43a6j32YSPWlIfS6q+4jidjzvSn1
	5CYpibnrpmJBEJVNvteZuSL/G953Wk/UEEC2OiVQFDL/niw9jNXLWgVElIJtzaTUEqQ2JOXc4DVPK
	CY13tRxy23+ueHfaM6X3jpVs2BBSOE5+piOH3oT7R/YIR/QNovV/n7nknB48SGFnNuApCIKrz56xZ
	MxCTSmfLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR5dN-0004nv-JN; Thu, 16 May 2019 01:56:37 +0000
Received: from mail-pl1-f176.google.com ([209.85.214.176])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR5dL-0004nD-3q
 for linux-riscv@lists.infradead.org; Thu, 16 May 2019 01:56:36 +0000
Received: by mail-pl1-f176.google.com with SMTP id w7so777624plz.1
 for <linux-riscv@lists.infradead.org>; Wed, 15 May 2019 18:56:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=Zf5kgUF54eJecH+3vr5kLoRlvS4uu5lIJnWNEEHf8Bg=;
 b=lQ4TgbOJ+X0g5AcU93Qr7dveTqSfTxrbSo5Fl3+n6XWJV4SYL/DxjYb4F0XRrYx/DE
 ZoWaVVKDSpqdn4QpbM8vKkatAw6h+clkvvcrYVafUy73CTcjN1Ao65hiFS4CNAvRDhJ0
 UDB2wWRD2hZqM5851Zl0s0HyGkqVbhmre+O7RnD6ZuH5+PDkNSWjAu7vIJ3Ys+8HdzUc
 JsZCVwsRCMTc4LNL4uuCJszufRdAcmqW4d/IjqvDOV+fRVKjsI4eAk1IV5EZpAJiB0ni
 5yC4y6FauFA/81qbaFqDBqG4At0UpL8cMXI/S2z/jw0TNtWWT1s15q3TGVqU/srXl+3D
 bfoQ==
X-Gm-Message-State: APjAAAUYN3dJdrYPg8cxHliA8yTIirPQi5b7fSyEAkOVrdU/PBPiG0rZ
 7MqJT5aE2qUM5s1w1xe6CjD6kQ==
X-Google-Smtp-Source: APXvYqw/2OjWMPbouASQFMJV5TfSTXbso5Z2ho9UWCmnVvHKk1SlB5jXN8UeF0v5jU9grFEiysumwQ==
X-Received: by 2002:a17:902:2ae6:: with SMTP id
 j93mr23883308plb.130.1557971790092; 
 Wed, 15 May 2019 18:56:30 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id p7sm1051914pgb.92.2019.05.15.18.56.29
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 15 May 2019 18:56:29 -0700 (PDT)
Date: Wed, 15 May 2019 18:56:29 -0700 (PDT)
X-Google-Original-Date: Wed, 15 May 2019 18:56:25 PDT (-0700)
Subject: Re: [GIT PULL] RISC-V Patches for the 5.2 Merge Window, Part 1
In-Reply-To: <CAHk-=wjBRKqBHe5Au=TpDq3B5p=AFKvpaf_7XSU3Mv0MgfGj+A@mail.gmail.com>
From: Palmer Dabbelt <palmer@sifive.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <mhng-3c75df62-0cf8-4e9d-b2f5-0a141fd244e4@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_185635_158457_091E1533 
X-CRM114-Status: GOOD (  15.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.176 listed in list.dnswl.org]
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
Cc: atish.patra@wdc.com, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 15 May 2019 18:49:57 PDT (-0700), Linus Torvalds wrote:
> On Wed, May 15, 2019 at 6:43 PM Palmer Dabbelt <palmer@sifive.com> wrote:
>>
>> Linus: I'm not sure how to tag this PR as a mistake, so I'm going to just send
>> another one.  If this gets merged then I'll handle the follow-on.
>
> Just emailing in the same thread ends up with me hopefully seeing the
> "oops, cancel pull request" before I actually pull, so you did the
> right thing.
>
> To make sure, you _could_ obviously also just force-remove the tag you
> asked me to pull, so that if I miss an email any pull attempt of mine
> would just fail.

Ah, OK, I hadn't thought of that one.

> .., and if were to have ended up pulling before you sent the cancel
> email and/or removed the tag, it's obviously all too late, and then
> we'd have to fix things up after the fact, but at least this time it
> got caught in time.

Ya, that's fine.  It's just an extra 0-length file that doesn't get built
("file." instead of "file.c"), which explains how it went unnoticed.  That
said, it's a bit of an embarassment and I wanted to submit two more patches
anyway so I was going to send another PR.  The rebased patches are sitting on
my for-next now, I'll send them up tomorrow unless someone points something
out.

Thanks for the quick reply!

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
