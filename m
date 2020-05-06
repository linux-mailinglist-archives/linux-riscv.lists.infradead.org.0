Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF66A1C7C4D
	for <lists+linux-riscv@lfdr.de>; Wed,  6 May 2020 23:21:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=TJIILTEYOND2ABkY5mYRV3mqm603bZvLy5NYWDgev6A=; b=ft3Sj9GcfXqaXh
	9gHWo8017n8p57iNA9H8wgDpK9AMuwE6VvyS4PDOcDTqCYKSTqDOqZabJ/1w02uBAyGDejN8MjfMW
	YiXhO2M3O4G7vp6xZ6di/lihOHO3BzJeKUObwEHwzh/ANhzrVqoMc6aDdPW8JOr4Oso+l4ZTVEAZy
	hN5tGnHtBGRobLqk7Fe391u4+vEbQEG3dRMX6YvoIAfVACJlvovfAZ4iY3Gpp0+ze6AlXkbYqaTRi
	nAguh+glIolqj7p7nd7tiUoiGD4Qt9UTAJkfF1gZXwzGRYXClJG9JM3zf+VrYxJQHqCsWFtQG+FZb
	kt2dr9OgA13vuROCuEew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWRTl-0001WG-CO; Wed, 06 May 2020 21:21:21 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWRTh-0001VY-5Y
 for linux-riscv@lists.infradead.org; Wed, 06 May 2020 21:21:18 +0000
Received: by mail-pj1-x1044.google.com with SMTP id 7so2937934pjo.0
 for <linux-riscv@lists.infradead.org>; Wed, 06 May 2020 14:21:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=TJIILTEYOND2ABkY5mYRV3mqm603bZvLy5NYWDgev6A=;
 b=qfiBWxiQjJY42YFTYn0CEM529f3pZ7Gb4n20D/mWV7ZyA5NRFy+0M7TX87Hq8Gm39O
 ZgfpFINTch9kC8fQj1rkxxEqjkxkxY47TgIDB4dgX1ULThTkJNtijmBfsWeNVXHB9r31
 eHcN22qtlPWvjWAkPMpBBxlgggAiQdpONqbPUdqSTHytN8n5XYFYdT92/WLMYOQBXR63
 +2g0tmc6NZrz7smdC0eCtRFtsboBGWrTiJwE6WgDWACpT7pWS34QqXUouiaUNLr1+7a0
 ZIXpOsXpM9GCYH0iQPc0uAaDWI9uC4d53qLtUPdUgimDGmnS2EJn4NO0pvYEQE65h2lg
 kVjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=TJIILTEYOND2ABkY5mYRV3mqm603bZvLy5NYWDgev6A=;
 b=pvjT3JoeKf8+PK2tV7Zw3+C3jfPCgRGeS3TJyn4+ja8m5x3YHXVWNvbo7nz1/b3vI3
 kDvBJDwpXHw2ijBiIuAtMbZa1skhv2cF0Gnw87qEm1QhZ7v0paJQgmleaxQp500xxXe1
 SlFNvqM949Zq5qEYynyHZp8LHjNPIFXPfpAj6yBngK5rqQKf20orMp9PSfHFxtq0QwTD
 Ofq7iX9qUKwjtWFogwLE3vJSQdd4aHDZvVrvcDZs12jDqJvII1ZTOELNvyVqnwI7CfbO
 7+qUK8TXUzEmsJepAbK1zR/GQlDWF43JFiwWmti64cbo1g4BqdUmmKGBxyIoJEne75bc
 acbA==
X-Gm-Message-State: AGi0PuZ7EVrH6UDqHttfDrvbXlUBQVevovfQ6qCpXhCv4gvbdbGsdTOy
 v3SSBQkBZUoqoc4TWDfUsZki6kTikVY=
X-Google-Smtp-Source: APiQypJd65nYRyp0mv99sCJ94AZN2Vi1kKYCn3alKUrPgLXyK+9srAk63tqXgnzxwhw0g1B0LfdJ0g==
X-Received: by 2002:a17:902:8ec1:: with SMTP id
 x1mr10259183plo.180.1588800075495; 
 Wed, 06 May 2020 14:21:15 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id gd17sm5600944pjb.21.2020.05.06.14.21.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 May 2020 14:21:14 -0700 (PDT)
Date: Wed, 06 May 2020 14:21:14 -0700 (PDT)
X-Google-Original-Date: Wed, 06 May 2020 14:21:08 PDT (-0700)
Subject: Re: Crashes with CONFIG_SLAB_FREELIST_RANDOM
In-Reply-To: <CAEn-LTp1e0oggUkDaDH6KrdrpHhPzEHv60inE4jRusKA4CTB6Q@mail.gmail.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: david.abdurachmanov@gmail.com
Message-ID: <mhng-7c460fc5-c60d-4260-9b2c-ce513c6466e5@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_142117_268995_7880C9D1 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: schwab@suse.de, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 04 May 2020 07:47:40 PDT (-0700), david.abdurachmanov@gmail.com wrote:
> On Mon, May 4, 2020 at 2:30 PM Andreas Schwab <schwab@suse.de> wrote:
>>
>> When enabling CONFIG_SLAB_FREELIST_RANDOM, the kernel frequently crashes
>> pretty early:
>>
>> [    0.165922] Unable to handle kernel paging request at virtual address 00000016e1694827
>> [    0.173081] Oops [#1]
>> [    0.175308] Modules linked in:
>> [    0.178353] CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.6.6-212-default #1 openSUSE Tumbleweed (unreleased)
>> [    0.188074] epc: ffffffe00016f40a ra : ffffffe00016f44c sp : ffffffe1f6ae9c90
>> [    0.195193]  gp : ffffffe0009ae600 tp : ffffffe1f6ae3480 t0 : ffffffe1f6c19c80
>> [    0.202398]  t1 : 0000000000000000 t2 : 000000000000f8b7 s0 : ffffffe1f6ae9cd0
>> [    0.209605]  s1 : ffffffe1f6a036c0 a0 : 0000000000000000 a1 : 00000000000002e1
>> [    0.216811]  a2 : ffffffe000a08c18 a3 : 7fda5816e1694827 a4 : 00000001f7d06000
>> [    0.224017]  a5 : 00000001f7d06000 a6 : ffffffe1f6c19c00 a7 : 0000000000ff0000
>> [    0.231224]  s2 : 0000000000000cc0 s3 : ffffffe00043262a s4 : 7fda5816e1694827
>> [    0.238429]  s5 : ffffffe1f6a1a800 s6 : 0000000000000000 s7 : 0000000000000038
>> [    0.245636]  s8 : ffffffe00018a674 s9 : ffffffe00018ab60 s10: ffffffe1f6c19c00
>> [    0.252842]  s11: 000000000000000a t3 : ff633e17173e647f t4 : 000000f600000000
>> [    0.260047]  t5 : 000000ff00000000 t6 : ffffffe1f6c34258
>> [    0.265344] status: 0000000200000120 badaddr: 00000016e1694827 cause: 000000000000000d
>> [    0.273289] ---[ end trace 703a116d0e920a95 ]---
>>
>> I think that means there is a use-after-free somewhere.
>
> I completely forgot about it, but I had the same issue on Fedora/RISCV
> side. With it enabled (which is typically the default) Fedora/RISCV
> fails to boot with the same the same or similar messages produced on
> console output.
>
> I believe the kernel at a time was v5.4.2.
>
> It seems that on Fedora/RISCV side I disabled it ~4 months ago.

This isn't reproducing for me on QEMU's virt board (-smp 4) and just
CONFIG_{SLAB,SLAB_FREELIST_RANDOM}.  Do either of you have a pointer to a full
config that I could look at?

I'm using the current fixes (essentially 5.7-rc4, as nothing we have right now
is relevant).

>
> david
>
>>
>> Andreas.
>>
>> --
>> Andreas Schwab, SUSE Labs, schwab@suse.de
>> GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
>> "And now for something completely different."
>>

