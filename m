Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3C121B7DE5
	for <lists+linux-riscv@lfdr.de>; Fri, 24 Apr 2020 20:32:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=j5yVmSZ49+Dlk+HvtGPX6bkjfOI3FaXkEm/kQbGP+aE=; b=sxhP3ZDW/v9i2m
	KJAzp0n28yB11QmQGLQ5edea4NHtgnMIG0oLyyv3nGSO+QBmOQfrBzQLmAn/6sOWBmS9f+TUJRJBJ
	wmoWhfo1liAm7d0CE4ExHhTgORow1uJsrqa6Cl24KRevUfvoKwYnWiQy8EKI3l4BzOR83BziuqkT0
	eYkvIrBHloB1dKZd5k8BbRyU1G6TES6INa/ozt1yvS5G6YjWZUliAGpWnyxZgfax/Q1tBc2Mg8bar
	oowSYYgc8u/sIpaa34hXLe1IANLC+trMmcBBrdNOvJ/SHK1pYMwVQ9WwpCIBy2sLs0fuu0qgGafm1
	qj2Rno7X58mm43+mar7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS37M-0007BX-96; Fri, 24 Apr 2020 18:32:04 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS37I-0007AX-Jx
 for linux-riscv@lists.infradead.org; Fri, 24 Apr 2020 18:32:01 +0000
Received: by mail-pj1-x1042.google.com with SMTP id 7so4883939pjo.0
 for <linux-riscv@lists.infradead.org>; Fri, 24 Apr 2020 11:31:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=j5yVmSZ49+Dlk+HvtGPX6bkjfOI3FaXkEm/kQbGP+aE=;
 b=KqlfvrAVypLEpCuU1bJQmCZIXtuEjRz0Wf4p+o9TfUTYa5oYpea2peY0U+Vt/flNWY
 nvHcbh8fuZMuYbdMdZy+Z9sT3k44ZxkqkYt93FDG3H1AseWnvN0Mx9igq4Pu/q9JAQ9e
 e2BZvSo7WYSAGD7KBHoxMLDYGch2RmkJlRvtYj+W9NgWpV4CiRhDzlvYGlRsCyEQPsGq
 XxxwveE0MsxpyT7wO1sj1EnUVb4HK1R7eKZ9KCsYoAif8VeEmkEdMzZ1t+13+SiZni3y
 clNiozmoY8RETci4AEJHv7stkI2Llbr4ahNfRg5jOBnslQ/XT9JsN8w7ZEs3GN8DRspX
 9f9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=j5yVmSZ49+Dlk+HvtGPX6bkjfOI3FaXkEm/kQbGP+aE=;
 b=eej3URq85hqK6zHUP0mugShq/Wo/X+Xal/6RiFmUsHHyRNXglw0cZrfIalWi/LK0md
 53meM0szRFYIPyahJPMJt86yiRed3qCam1RY6C8QpW22CeF3ucBZ5CsQSzyjQu1A/WlZ
 9qYOqG9ItVC8W+pPnLCQ6o5nHyspJVLsUHO3F+oI0xhaqcuRZVdKSI7grzzETX2Mq9dI
 +4mIohzLcm4kppTKSny/0WBEnYcXWsxfxcJlSHAQxhAyURTLhxFN7aXCBYop+VBpx9N3
 W2vviBL8oVgvduDg89V8I78cDhvmgTSRg6Fk9KVNT21A6B27ua/Iqv9IcqgQ2rcVNoFI
 WbpQ==
X-Gm-Message-State: AGi0PuZd2mJ+ghSENw3ui/7iOJSVHq3RV92Rqx+MWmw3K0gGoB32G0zE
 bwfShlunZcG/VkEyvCfZ3HhL7WKD3C9TdA==
X-Google-Smtp-Source: APiQypJ2lNi86K1D12Q6C61CR08+CH6Rrg/SJADHvMD0civYXQGZsTNGMj5QApjivqEDiROWc7FZPg==
X-Received: by 2002:a17:90a:1f8f:: with SMTP id
 x15mr7664378pja.76.1587753118835; 
 Fri, 24 Apr 2020 11:31:58 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id a142sm6416357pfa.6.2020.04.24.11.31.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Apr 2020 11:31:58 -0700 (PDT)
Date: Fri, 24 Apr 2020 11:31:58 -0700 (PDT)
X-Google-Original-Date: Fri, 24 Apr 2020 11:30:31 PDT (-0700)
Subject: Re: More K210 Support
In-Reply-To: <BY5PR04MB6900F96F2F8DD4B91EC8AFDDE7D40@BY5PR04MB6900.namprd04.prod.outlook.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Damien Le Moal <Damien.LeMoal@wdc.com>
Message-ID: <mhng-de46ca9b-d989-4513-b110-867a2885c3fe@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_113200_704381_6AB4281C 
X-CRM114-Status: GOOD (  12.69  )
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
Cc: linux-riscv@lists.infradead.org, kernel-team@android.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 20 Apr 2020 15:25:33 PDT (-0700), Damien Le Moal wrote:
> On 2020/04/21 5:29, Palmer Dabbelt wrote:
>> On Sun, 12 Apr 2020 18:45:33 PDT (-0700), Damien Le Moal wrote:
>>>> On 2020/04/09 1:58, Palmer Dabbelt wrote:
>>>> * Builds a table of device trees, keyed by mvendorid/marchid/mimpid.  This
>>>>   allows multiple device trees to be built into the kernel.  I don't really
>>>>   like maintaining the two lists (one in C and one in assembly) or having that
>>>>   function in the table, but it's the best I could come up with.
>>>> * "handles" PMP traps by just skipping the PMP setup phase.
>>>>
>>>> I don't actually have a K210 so I can't test any of this.  I also couldn't find
>>>> the K210 identifiers listed anywhere online, so someone will have to dig them
>>>> out of the board.
>>>>
>>>> I also didn't spend any time thinking through how we free these device trees,
>>>> but given that .dtb.init.rodata already exists as a section I'm just guessing
>>>> that's were we're supposed to put them.
>>>
>>> I cannot test anything yet. Something funky is going on with boot objcopy/Image
>>> size: I end up with an Image file (and loader/loader.bin) that are 8.5MB instead
>>> of the 1.4MB I had before pulling in Linus tree. rc1 as of this morning still
>>> shows the same problem. vmlinux is 1.8MB vs 1.9 MB before.
>>>
>>> To check if my toolchain is broken, I recompiled the 5.6 tree I used for
>>> developing the series and I end up with a loader.bin file of 1.4 MB. All looking
>>> good. But there are changes to the vmlinux elf section headers which likely
>>> cause the huge final size I am seeing. Will try to dig into this.
>>
>> Thanks!
>
> I sent you fixed patches already. Please review them.
> The large image size was due to the strict RWX alignment of elf sections, which
> can be disabled for no mmu case since there is no RW protection anyway.

That RWX thing didn't make it to my inbox for some reason, but Atish pointed it
out in another thread.  It's on for-next now.  Thanks!

