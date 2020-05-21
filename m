Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C003D1DD62E
	for <lists+linux-riscv@lfdr.de>; Thu, 21 May 2020 20:43:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:
	References:In-Reply-To:Subject:To:From:Date:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+VCj0R9L0vOfrBq3Ugv6X0jJ2VkKbFZyZHSVKhejYtI=; b=BHVQ+KvPnHTbcHcglmhrWLTF6
	1Hm+byN8Z6Rtj/oszprzEg6nXOyjgo6B+O9D1swAq4rhGL+eonFO/w89qxGGxPa3tZ3Z6F5O1oy+l
	RevCI8WqbIF37oJhsF9YwOv3Z0MxNWKT6fVGDNN3UKeQemdYZqtKFzh4lVuCLF9qMvCqRZvci9Mzk
	XqR0/EbIEtcEKhF98FPs83KR3l/wqcM9p0HR2SLQ8PpyOiESCBlxgU3LXlzIUPkoma+CVW6J/sIpU
	qAXaU4FkPAb+gZqcDaoiVTht+4WAEcSsHy7djud3wfRS9iVOBELw4FXFUCVloLgBR8aTvOHZiSjqb
	qsFtCJkdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbqAG-0005AX-HP; Thu, 21 May 2020 18:43:32 +0000
Received: from mailgate-2.ics.forth.gr ([139.91.1.5])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbqAC-00057U-Jc
 for linux-riscv@lists.infradead.org; Thu, 21 May 2020 18:43:30 +0000
Received: from av3.ics.forth.gr (av3in [139.91.1.77])
 by mailgate-2.ics.forth.gr (8.14.4/ICS-FORTH/V10-1.8-GATE) with ESMTP id
 04LIgxAx002171; Thu, 21 May 2020 18:43:01 GMT
X-AuditID: 8b5b014d-241ff700000045c5-9d-5ec6cbb3387c
Received: from enigma.ics.forth.gr (enigma.ics.forth.gr [139.91.151.35])
 by av3.ics.forth.gr (Symantec Messaging Gateway) with SMTP id
 51.08.17861.3BBC6CE5; Thu, 21 May 2020 21:42:59 +0300 (EEST)
X-ICS-AUTH-INFO: Authenticated user:  at ics.forth.gr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Date: Thu, 21 May 2020 21:42:58 +0300
From: Nick Kossifidis <mick@ics.forth.gr>
To: palmer@dabbelt.com, linux-riscv@lists.infradead.org
Subject: Re: [PATCH 0/3] RISC-V: Add kexec/kdump support
Organization: FORTH
In-Reply-To: <20200424171214.1515457-1-mick@ics.forth.gr>
References: <20200424171214.1515457-1-mick@ics.forth.gr>
Message-ID: <ac64bfe1ea375e583a12e396c48e1d97@mailhost.ics.forth.gr>
X-Sender: mick@mailhost.ics.forth.gr
User-Agent: Roundcube Webmail/1.3.9
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrMLMWRmVeSWpSXmKPExsXSHT1dWXfz6WNxBgsmaVu0fHjHarFoxXcW
 iy2HHzFbbPvcwmbR/O4cu8XLyz3MFm2z+C2aXlxnduDwmPr7DItH148ZrB5vXr5k8Xi46RKT
 x+Yl9R6Xmq+ze7Qf6GYKYI/isklJzcksSy3St0vgyvh9dQpzwQLmipN7ulgaGM8wdTFycEgI
 mEi8nCPbxcjFISRwlFHi6NbzzF2MnEBxU4nZezsZQWxeAUGJkzOfsIDYzAIWElOv7GeEsOUl
 mrfOBqtnEVCVeP/1ExOIzSagKTH/0kGwehEBc4k9m9cwgixgFljAKLHn4SuwImGgQY2f+1hB
 bH4BYYlPdy+C2ZwClhJz5s4BaxYCqjlzcC87xBEuEhuP7GWDOE5F4sPvB2BxUQFliZuHn7NP
 YBScheTWWUhunYXk1gWMzKsYBRLLjPUyk4v10vKLSjL00os2MYLjgdF3B+PtzW/1DjEycTAe
 YpTgYFYS4V3IfzROiDclsbIqtSg/vqg0J7X4EKM0B4uSOG8e9/JYIYH0xJLU7NTUgtQimCwT
 B6dUA1PqKzEHzR2VLM++rS2e3Sjl2/RJ8q1oLfejEF3HB1OduVzYDT8srRTXfd7BtWHeVEM3
 8cxH8rwfqxwVrJTa2+d7F+y4cvP9nL3Fu1127Elcsm3txoqeBzUX/zw535Jqd+LEpl++R+3+
 z57GLnJVtfN0lxnvBGZzff+CMLF3qZNC7f6mOwX+q1LRjP8svGj1D57ihzpXS0vuJ/6/s8JF
 dqp6eTeTmYzdz3W8W/QCrudeWcFe72Vb1l3ValqT8+NFSfTXv+K/z8v9N7sYpvzm+fdrp1du
 rLvZIj7TjNvoSsBnT6GFQlJTu5efvFa+JX7N8gnzstLPPDh1tkFdoepU4ule84m10XNFC+Tc
 pl8Q5VBiKc5INNRiLipOBABd+HH09gIAAA==
X-Greylist: inspected by milter-greylist-4.6.2 (mailgate-2.ics.forth.gr
 [139.91.1.5]);
 Thu, 21 May 2020 18:43:01 +0000 (GMT) for IP:'139.91.1.77' DOMAIN:'av3in'
 HELO:'av3.ics.forth.gr' FROM:'mick@ics.forth.gr' RCPT:''
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mailgate-2.ics.forth.gr [139.91.1.5]); Thu, 21 May 2020 18:43:01 +0000 (GMT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_114329_009532_EFF43889 
X-CRM114-Status: UNSURE (   7.00  )
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
Cc: david.abdurachmanov@sifive.com, anup@brainfault.org, atish.patra@wdc.com,
 yibin_liu@c-sky.com, paul.walmsley@sifive.com, mick@ics.forth.gr
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Στις 2020-04-24 20:12, Nick Kossifidis έγραψε:
> This patch series adds kexec/kdump and crash kernel
> support on RISC-V. For testing the patches a patched
> version of kexec-tools is needed. The patch is still
> a work in progress but a draft version can be found at:
> 
> http://riscv.ics.forth.gr/kexec-tools.patch
> 

Any comments / feedback on this ? Should we get it in ?

Regards,
Nick

