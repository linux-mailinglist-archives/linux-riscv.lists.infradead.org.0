Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A3A151172
	for <lists+linux-riscv@lfdr.de>; Mon,  3 Feb 2020 21:58:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q6PthBh5G3Px3/xaEtONzvI7oQ2co/AOqB/7PI5iszA=; b=QKRDsOLluKhv9P
	rSc6r84WdH3aM0usKeIK77senubUJmT7FwFMDJcmT7KQeC7OLUNVwphtV4RKvy3gSZMs3mZJJezwF
	fQR4rfdHhOeVq+HfHlX2O5nceLaWmI2q1/qjI/qKir8QaVRqlfSfrV0+8UixpgbQ/ju+wu563RVEk
	4nxMm2BVYhZYh2oAdW8eeAU3fFEvt080+BKV3U5Z9vFYhEPkprAcb8Ln96UXuELT4fFRgOw+cZzSf
	uGZP1E3CNhteJ/+XZekqbBh6LYzt6iDNqCuZB/IkjXn8eKUdnQ/s1CGy/3MozGgTf2wd3Wm386Oo2
	smBpCO6K4hBrAbRi92Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyinQ-0001Ln-Bf; Mon, 03 Feb 2020 20:58:16 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyinP-0001Lc-23
 for linux-riscv@bombadil.infradead.org; Mon, 03 Feb 2020 20:58:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=q6PthBh5G3Px3/xaEtONzvI7oQ2co/AOqB/7PI5iszA=; b=vW0B860r0yemkn2LadRY/LYodV
 3rJS463hbDQkIbj4XmHnvsApO5a/pl0E/zPxKcIiKrrsPEVaJY8GwS1f2F36YdWf2zeIkb3xaT1XP
 NG2ANebn841NtXipoeUQ7Kpp46kJIIJjVa1ROep2aMnGPk2DKHgJqnekPOI/ckiqGWjVRh39WrdRu
 fQjSOYwY/Au14gawmC5hwqESFrQ8VPk3evuhIXziBTX9hxLMFr3jgdpSmf9Rgn6MwW4SuKuZTfr9B
 gzalP1oRt16JxZH6hicLW6I9Y1My18C+lhHDC5SgXieRl7YLyzcK7CgCYutvrnJ1LOxl1Nuoqeucl
 9cHdm31A==;
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyiVf-0008BT-2t
 for linux-riscv@lists.infradead.org; Mon, 03 Feb 2020 20:39:58 +0000
X-Originating-IP: 79.86.19.127
Received: from [192.168.0.12] (127.19.86.79.rev.sfr.net [79.86.19.127])
 (Authenticated sender: alex@ghiti.fr)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 02D5BC0004;
 Mon,  3 Feb 2020 20:57:38 +0000 (UTC)
Subject: Re: Error on loading some network Kernel modules
To: Romain Dolbeau <romain.dolbeau@european-processor-initiative.eu>,
 Anup Patel <anup@brainfault.org>, Aurelien Jarno <aurelien@aurel32.net>
References: <CADnnUqfhxWN=cyyr0QQyKrrO13LuDFS9NTqOLwm10CnwB3sDXA@mail.gmail.com>
 <alpine.DEB.2.21.999.2001300259070.23963@utopia.booyaka.com>
 <CAEn-LToMfm=G80TmGQZefpmKhKvpGy_=XOoBLGU0a_77ahY+_w@mail.gmail.com>
 <20200131201118.GA4121429@aurel32.net>
 <CAAhSdy03C==7PmuXE441BtDJH8H07rOH-u+-_sZJG70tbTrJcA@mail.gmail.com>
 <d868acf5-7242-93dc-0051-f97e64dc4387@ghiti.fr>
 <33c9a276-6212-115c-c7c9-e62244f13c76@european-processor-initiative.eu>
From: Alex Ghiti <alex@ghiti.fr>
Message-ID: <bbe7c500-0d81-ad9e-151e-07115b8eee02@ghiti.fr>
Date: Mon, 3 Feb 2020 15:57:38 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <33c9a276-6212-115c-c7c9-e62244f13c76@european-processor-initiative.eu>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_203955_392286_6D3AEFD9 
X-CRM114-Status: GOOD (  15.04  )
X-Spam-Score: -2.6 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-2.6 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Vincent Chen <vincent.chen@sifive.com>,
 Carlos Eduardo de Paula <me@carlosedp.com>, Paul Walmsley <paul@pwsan.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 David Abdurachmanov <david.abdurachmanov@gmail.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Romain,

On 2/2/20 11:27 AM, Romain Dolbeau wrote:
> On 2020-02-01 14:59, Alex Ghiti wrote:
>> Why restrict to 128M whereas we have 2GB offset available to the end 
>> of the kernel ?
>
> Isn't that 2 GiB offset to whatever the module requires in the kernel, 
> rather than to the end of the kernel space?


Yes it is, _end is defined as the last symbol in the kernel: so the 
modules need to lie somewhere they can,
at worse, access this last symbol so having the modules in vmalloc zone 
from [ _end - 2GB; VMALLOC_END ]
allows that right ? Or am I mistaken ?

Alex


>
> Is there some guarantee that symbols accessible by modules are at the 
> end of the kernel? If so, wouldn't the maximum offset for this patch 
> still be (2 GiB - <total size of accessible symbols>)?
>
> Cordially,
>

