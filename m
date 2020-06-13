Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C3EB1F817F
	for <lists+linux-riscv@lfdr.de>; Sat, 13 Jun 2020 09:24:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:
	References:In-Reply-To:Subject:To:From:Date:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZAfPmingBENsxKWMq7y/epl3K5DojLqUgN2+Ou+XeuI=; b=Glp8ZdcLMjWUnd6Wvu9QAnt1E
	JqIgWRGhujNZD0KPxYHbz7LBbH4ISNz5qvHiAO1R03pBwO2dXU2Elwnmec6vQPfg7yzA/1fTqwJ8Q
	mfiNSGJ6GwnzdUZ/TI/Vc6615NhAONf3Y3dnzVrIbqDIaAnR0RibqEuUl0WyNTCHV2mrXsmrBWpLC
	p7MGlusHO9k5zl82TyCUPNfK6cvoBc4+xn/XiWC2g80gOdCMrF+f1O7j1+Ib2vjK0UrbgwEmk9+aR
	vn26Oupl2xgd8nXc6Wh6/VvY8i49cvFS84DYoFMc5+cD/ZlgCUtBDaqVrH8XYMmrFfyQpuR1AAl4j
	DPEPs/U/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jk0Wm-0004aP-VF; Sat, 13 Jun 2020 07:24:32 +0000
Received: from mailgate-2.ics.forth.gr ([139.91.1.5])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jk0Wj-0004Zd-Fw
 for linux-riscv@lists.infradead.org; Sat, 13 Jun 2020 07:24:31 +0000
Received: from av3.ics.forth.gr (av3in [139.91.1.77])
 by mailgate-2.ics.forth.gr (8.14.4/ICS-FORTH/V10-1.8-GATE) with ESMTP id
 05D7O2Pn015221; Sat, 13 Jun 2020 07:24:04 GMT
X-AuditID: 8b5b014d-241ff700000045c5-8c-5ee47f1237cf
Received: from enigma.ics.forth.gr (enigma.ics.forth.gr [139.91.151.35])
 by av3.ics.forth.gr (Symantec Messaging Gateway) with SMTP id
 A2.93.17861.21F74EE5; Sat, 13 Jun 2020 10:24:02 +0300 (EEST)
X-ICS-AUTH-INFO: Authenticated user:  at ics.forth.gr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Date: Sat, 13 Jun 2020 10:24:01 +0300
From: Nick Kossifidis <mick@ics.forth.gr>
To: Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH 0/3] RISC-V: Add kexec/kdump support
Organization: FORTH
In-Reply-To: <mhng-3accafc5-2df8-4798-aebd-b86a0f0414b7@palmerdabbelt-glaptop1>
References: <mhng-3accafc5-2df8-4798-aebd-b86a0f0414b7@palmerdabbelt-glaptop1>
Message-ID: <a276c6dfa03682d518543329bb36bc0e@mailhost.ics.forth.gr>
X-Sender: mick@mailhost.ics.forth.gr
User-Agent: Roundcube Webmail/1.3.9
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrMLMWRmVeSWpSXmKPExsXSHT1dWVeo/kmcwbkOBYuWD+9YLRat+M5i
 seXwI2aLbZ9b2Cya351jt3h5uYfZom0Wv0XTi+vMDhweU3+fYfHo+jGD1ePNy5csHg83XWLy
 2Lyk3uNS83V2j/YD3UwB7FFcNimpOZllqUX6dglcGadmrGUu+MFZ8WHWdeYGxlfsXYycHBIC
 JhL3fp1j7mLk4hASOMoosXLXLUaIhKnE7L2dYDavgKDEyZlPWEBsZgELialX9jNC2PISzVtn
 M4PYLAKqEu8+LgeLswloSsy/dBCsXkRAXeLA6ztgC5gF3jBKXF67F6xIGGhQ4+c+VhCbX0BY
 4tPdi0A2BwengL/EkW9gvUICfhIP9l1ghbjBRWLi1W+sELepSHz4/QDsAVEBZYmbh5+zT2AU
 nIXk1FlITp2F5NQFjMyrGAUSy4z1MpOL9dLyi0oy9NKLNjGC44HRdwfj7c1v9Q4xMnEwHmKU
 4GBWEuHtTnsSJ8SbklhZlVqUH19UmpNafIhRmoNFSZw3j3t5rJBAemJJanZqakFqEUyWiYNT
 qoFJV5dvt+a8VV0r1p77VKj008bpeOsSqYyWpZcKO6WuueToeZ9Y0RjOz2XVNIO15ZzlQqbJ
 nr6aSrcf3r/E9vcFU6btuoZ3SQt77Jyi+jk/SUWvfykwzazcnrmn4GXRAy7viBxbF5Zmf0aW
 8pJj66L6a5uMZJefPFG+9BHTjC/Pbh2vkFCtS3GoLeM5un8X85v/Ufv0e5P4PEQ6tqjIJ1a3
 XVw6Kf2oRqvO9r/nD5bLtm5YcdLeRW2Vw11ZnqW652uiSvROn53srDFf2zdXTi/jnYUm54r9
 bFz/fQ++SXy3ask1RecD09uTLjf6py796rEr0nLa2rZm9Tu7DvT38ogIff3MpPN/KsfMvprI
 qUosxRmJhlrMRcWJAKyCIUr2AgAA
X-Greylist: inspected by milter-greylist-4.6.2 (mailgate-2.ics.forth.gr
 [139.91.1.5]);
 Sat, 13 Jun 2020 07:24:04 +0000 (GMT) for IP:'139.91.1.77' DOMAIN:'av3in'
 HELO:'av3.ics.forth.gr' FROM:'mick@ics.forth.gr' RCPT:''
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mailgate-2.ics.forth.gr [139.91.1.5]); Sat, 13 Jun 2020 07:24:04 +0000 (GMT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_002429_893565_4A4A1E97 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [139.91.1.5 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: david.abdurachmanov@sifive.com, anup@brainfault.org,
 Atish Patra <Atish.Patra@wdc.com>, yibin_liu@c-sky.com,
 Paul Walmsley <paul.walmsley@sifive.com>, mick@ics.forth.gr,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Στις 2020-06-11 22:39, Palmer Dabbelt έγραψε:
> On Thu, 11 Jun 2020 12:09:08 PDT (-0700), mick@ics.forth.gr wrote:
>> Στις 2020-05-21 21:42, Nick Kossifidis έγραψε:
>>> Στις 2020-04-24 20:12, Nick Kossifidis έγραψε:
>>>> This patch series adds kexec/kdump and crash kernel
>>>> support on RISC-V. For testing the patches a patched
>>>> version of kexec-tools is needed. The patch is still
>>>> a work in progress but a draft version can be found at:
>>>> 
>>>> http://riscv.ics.forth.gr/kexec-tools.patch
>>>> 
>>> 
>>> Any comments / feedback on this ? Should we get it in ?
>>> 
>>> Regards,
>>> Nick
>> 
>> Anyone ?
> 
> Sorry, I dropped the ball on this one.  After the CPU hotplug breakage 
> I
> decided I need to get a pre-merge test for all these new features, and 
> I
> haven't gotten around to actually doing so yet.  The merge window is 
> closing
> right now, so with any luck I'll have some time to get around to my 
> patch
> backlog -- first I need to go spin up some better testing, though.

Anything I can do to help ? I have a bunch of hw available (unleashed, 
genesys2 and nexys 2 ddr for Ariane / LowRISC SoC) and I'll probably 
also need to have a CI flow for the stuff I do internally.

