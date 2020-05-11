Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 771531CE7E3
	for <lists+linux-riscv@lfdr.de>; Tue, 12 May 2020 00:02:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=QcqAv7P8UvANEMfeZSVs1Z4C8izH07RPJiqXxjw9hi4=; b=h8DjaM+U7fY3Jv
	MfqvSa2IYeeNN+K//2hBjA7Q2Cq2Njmm0DALWwg5bFt3KzqvMnd1rVN+r15M+CAq0YWTsCxPz3pNc
	srQEI60YqjX1Atdz3VB2mo+8NwFKLLLQU/jtCgIxAIt6u/nFsxpc+JzdSeYwD0h+TrbmcOZQ+copp
	FMgkKUDGGq86HbT/LXilBkkBQxq0hvTb9d78itQ9tvGqzC+f+MNRzTQDBy0Mom/b7eHPFnZ/IyV/s
	7USG0L87wYhIWSzRYpkEpq8joMsByuQaa8yIebn5jdkiJlskMPBPw8kIy9r39jYVY4jmRqdenuqvx
	ZMWMFctXIT9hKvdaBmmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYGVc-0002KZ-5h; Mon, 11 May 2020 22:02:48 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYGVY-0002K2-LV
 for linux-riscv@lists.infradead.org; Mon, 11 May 2020 22:02:46 +0000
Received: by mail-pj1-x1042.google.com with SMTP id t40so8409516pjb.3
 for <linux-riscv@lists.infradead.org>; Mon, 11 May 2020 15:02:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=QcqAv7P8UvANEMfeZSVs1Z4C8izH07RPJiqXxjw9hi4=;
 b=zGg51pqrgFWI4OxU/iBR6WpE4sKCxEHd98DVJAj06WnuF8itLlYSDkEXZHNlI1oJwo
 0F3EmlaYIOvLA9q4llDdhbRV5qpvz9ykQM9YaWkc3Bem2PK+yFOC0jYYaw07WD6z1KbQ
 N4EMyQ0PnZiTLMG1GrhpN54g+PjvA2JT05NfXNEYMZ7CiI6VFr7vJhkcUfJRagIlnnzt
 kjUIggrjl+kqrhLgJp/VSrWr7UXg/dCDTf+Cvnk557yZTibYwa1j4i6Iold0jx+iN3P5
 zUsqPy8qEFSXISNg/to6m62QxJJT61C2/1vRcfufsllpzjwb9Zu3gF8gtqTIkR4+OqVH
 vLyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=QcqAv7P8UvANEMfeZSVs1Z4C8izH07RPJiqXxjw9hi4=;
 b=rMYB1o5c29JTupqhYmyRZRCe5+3RwdwQ9jLVjTMIbFpI4XxYDP2NACO6w6uMkwrm/D
 RPnHkpmFk0/MJuIJ9P4QgXiLdk/TGNLyBwWFCgE5Yfq2KzrXeiBp+Q8Ego5gmTOujBGY
 8G7yxFzXKYfpsBLZ5OAvODksjr0joqR+h6sXB8DpBPf8rfuSi/TN+DieWxmFSiZUgn7G
 e4bwdSx7+dhNMYIBd9dalFEJ6tUgwlXWIYb84XlILkXlEd94Pyu3P6zIqmWjBEe+6ovK
 K/3f2a+hm8Nk0iHcgL6i0wgMkSDFwoJz+fHdG8hIs6ef2O0qX71jUQsxCXNRcdloNhci
 VRsQ==
X-Gm-Message-State: AGi0PuZBVhbnKe7UbmoNhSd/RVW8PVkiSoYIMVzPCVRGvOZ4GriPFUwp
 uvYuXA629oFJcs5POzukTWBRPTHSnik=
X-Google-Smtp-Source: APiQypKbWv7BEQtYlKsnaRgx2nOihXjdEb2WmNkWEXAul0dPafNnIP8I4CYyNEVkRCkfmcHQMhn0Gg==
X-Received: by 2002:a17:902:8697:: with SMTP id
 g23mr16808107plo.306.1589234563112; 
 Mon, 11 May 2020 15:02:43 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id a13sm50193pjm.38.2020.05.11.15.02.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 15:02:42 -0700 (PDT)
Date: Mon, 11 May 2020 15:02:42 -0700 (PDT)
X-Google-Original-Date: Mon, 11 May 2020 15:01:02 PDT (-0700)
Subject: Re: [GIT PULL] RISC-V Fixes for 5.7-rc5
In-Reply-To: <CAHk-=wj8Cks7L2H9ToNWEMmqECYEfX0uyCXpW1OsZ+NAooi2Cw@mail.gmail.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <mhng-a0b97369-68df-4c33-ab10-28a5d3950b5e@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_150244_706780_4AC54A18 
X-CRM114-Status: GOOD (  19.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: schwab@suse.de, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 11 May 2020 12:04:09 PDT (-0700), Linus Torvalds wrote:
> On Mon, May 11, 2020 at 1:13 AM Andreas Schwab <schwab@suse.de> wrote:
>>
>> On Mai 09 2020, Linus Torvalds wrote:
>>
>> > glibc depending on kernel version is WRONG. It's bogus. You can't do
>> > feature detection based on kernel version, it's fundamentally broken.
>> >
>> > So I really would prefer to see glibc fixed not to do that stupid
>> > thing, instead of adding pointless vdso notes to the kernel.
>>
>> I'm not aware of any discussion or bug report on this issue.  Any
>> pointer?
>
> We've discussed it informally several times, but that really is just
> "I remember mentioning this before" than anything else.
>
> Basically, testing kernel versions is pretty much always a bug. You
> _will_ get it wrong, sometimes spectacularly (we've had programs
> literally break when the major number changed, because they only
> checked the minor number).
>
> Other times you'll get it wrong in subtler ways - testing for features
> by version number is wrong, if that feature is then disabled by a
> config option (a lot of new kernel features work that way).
>
> Or, the already mentioned "distros often port back features to their
> older kernels". The latest example of that is Wireguard being ported
> back to Ubuntu 20.04 - using kernel version 5.4, even though WG was
> actually upstreamed in 5.6.
>
> So the whole "look at kernel version to determine if it does X" is
> simply fundamentally wrong.
>
> Why is glibc doing it in the first place? Is it some historical thing
> that is simply irrelevant on RISC-V simply because RISC-V doesn't have
> that kind of history, perhaps?

I don't know if Andreas had something else in mind, but there's actually a
RISC-V specific reason we _do_ need this: the 64-bit time_t conversion.
Essentially what happened is that I screwed up by merging the rv32 Linux port
before the rv32 glibc port.  As part of the rv32 upstreaming process we
realized that it would be better in the long term to just drop the 32-bit
time_t support from the kernel, but at that point we already had the Linux UABI
defined.

We ended up changing the user ABI on 32-bit systems as of d4c08b9776b3 ("riscv:
Use latest system call ABI").  We didn't have any rv32 userspace at that time
(and we still don't have glibc or any Linux capable hardware), so we figured it
would be OK to break the rules and change the ABI.  The obvious result is that
32-bit userspace won't work with old kernels, so I'd assumed this was being
used to quickly sanity check the kernel.

Andreas would know better than I do, though, as  I don't really do much glibc
stuff any more.

>
>                  Linus

