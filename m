Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A32171F6DBC
	for <lists+linux-riscv@lfdr.de>; Thu, 11 Jun 2020 21:10:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:
	References:In-Reply-To:Subject:To:From:Date:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=53HMfJD66Js7we91C9EG6apzgRIOGP6n4HZkPakOaCU=; b=HB99vS4OeSl1cyyBVwqH5RuFk
	THkKkrwtZMIpPG7KXWAR6ICKmcJqY4zeAIruLSlExG6oCS0meGHIinOlDI3yjBd8nPL//bfYgP4zC
	Dy4o8jvKi32F9VdSdc2zineFvYZj+dE80sMQo3zQQ1HyBD+az39TwfCOcNyrKv1ZIyGH+bX/z7hzm
	2w0djWmNWThs+ygvucF/Bb1glIh7/98NMfaD+F9lSCxpscpdzW9SNZJwILBdJHbT81AZn3dcaYUUU
	/6G+hDYGBXFtpf+GunxIbww3c3o3hfLTGMiB6QiW7FRfd6lYZYjWIy5AoJB6QWQrAkvEhxmgUjOfv
	NrbM/NmZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjSaL-0000DX-CB; Thu, 11 Jun 2020 19:09:57 +0000
Received: from mailgate-2.ics.forth.gr ([139.91.1.5])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjSaG-0000Ce-Ot
 for linux-riscv@lists.infradead.org; Thu, 11 Jun 2020 19:09:55 +0000
Received: from av3.ics.forth.gr (av3in [139.91.1.77])
 by mailgate-2.ics.forth.gr (8.14.4/ICS-FORTH/V10-1.8-GATE) with ESMTP id
 05BJ99WH005982; Thu, 11 Jun 2020 19:09:11 GMT
X-AuditID: 8b5b014d-241ff700000045c5-f0-5ee281553344
Received: from enigma.ics.forth.gr (enigma-2.ics.forth.gr [139.91.151.35])
 by av3.ics.forth.gr (Symantec Messaging Gateway) with SMTP id
 8F.8D.17861.55182EE5; Thu, 11 Jun 2020 22:09:09 +0300 (EEST)
X-ICS-AUTH-INFO: Authenticated user:  at ics.forth.gr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Date: Thu, 11 Jun 2020 22:09:08 +0300
From: Nick Kossifidis <mick@ics.forth.gr>
To: Nick Kossifidis <mick@ics.forth.gr>
Subject: Re: [PATCH 0/3] RISC-V: Add kexec/kdump support
Organization: FORTH
In-Reply-To: <ac64bfe1ea375e583a12e396c48e1d97@mailhost.ics.forth.gr>
References: <20200424171214.1515457-1-mick@ics.forth.gr>
 <ac64bfe1ea375e583a12e396c48e1d97@mailhost.ics.forth.gr>
Message-ID: <f1f3932ac90089d2d07d89e05270a98d@mailhost.ics.forth.gr>
X-Sender: mick@mailhost.ics.forth.gr
User-Agent: Roundcube Webmail/1.3.9
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrMLMWRmVeSWpSXmKPExsXSHT1dWTe08VGcwedbahYtH96xWixa8Z3F
 YsvhR8wW2z63sFk0vzvHbvHycg+zRdssfoumF9eZHTg8pv4+w+LR9WMGq8ebly9ZPB5uusTk
 sXlJvcel5uvsHu0HupkC2KO4bFJSczLLUov07RK4Mk6uXctS8JO5YuayP8wNjJOZuxg5OSQE
 TCROTZzF3sXIxSEkcJxRYse9XUwQCVOJ2Xs7GUFsXgFBiZMzn7CA2MwCFhJTr+xnhLDlJZq3
 zgYaxMHBIqAqsbE7GCTMJqApMf/SQbByEQF1ic7nbxhB5jMLHGKUONvZzA6SEAaa0/i5jxXE
 5hcQlvh09yKYzSngKrGj5yLYDUICxRK3z0+BusFFou3YW0aI21QkPvx+ADZHVEBZ4ubh5+wT
 GAVnITl1FpJTZyE5dQEj8ypGgcQyY73M5GK9tPyikgy99KJNjOB4YPTdwXh781u9Q4xMHIxA
 t3IwK4nwCoo/jBPiTUmsrEotyo8vKs1JLT7EKM3BoiTOm8e9PFZIID2xJDU7NbUgtQgmy8TB
 KdXAFPPd74RmctFGmykfKgXMby2Ue5s2oXS/CO+nzqfH9tvOrNKfk73nnqdthLJi9+aMj067
 onVtGm55uhSZq9a7m//7d/RLxtzvBxcJVq0TFbnQssjobthdExuXvfFrj/Oq1a2VWet4xHST
 efGGC9ckwjpm8b25f+dP4Tbhq2x7Bb6F5ydkzok33fj9cPqa5cHtX1zY3k/2Fd77P5c3RTTh
 /OHkuHdZCgJCicoG1k7LlXh88qcu0FqaHLO/5kaux3/LUxt4zrOXfBdcauX/26bKmHme4ss5
 P0tPLK9Ia9y/YgFr6u0/D+bm+8mLbrVYdm6G1BLDqR3XZrw4tEBnbby1f8+WJF2NoGmyF6ZH
 iN4KVmIpzkg01GIuKk4EAKFm+iX2AgAA
X-Greylist: inspected by milter-greylist-4.6.2 (mailgate-2.ics.forth.gr
 [139.91.1.5]);
 Thu, 11 Jun 2020 19:09:11 +0000 (GMT) for IP:'139.91.1.77' DOMAIN:'av3in'
 HELO:'av3.ics.forth.gr' FROM:'mick@ics.forth.gr' RCPT:''
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mailgate-2.ics.forth.gr [139.91.1.5]); Thu, 11 Jun 2020 19:09:11 +0000 (GMT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_120953_172915_07D31563 
X-CRM114-Status: UNSURE (   6.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [139.91.1.5 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: david.abdurachmanov@sifive.com, anup@brainfault.org, atish.patra@wdc.com,
 yibin_liu@c-sky.com, palmer@dabbelt.com, paul.walmsley@sifive.com,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Στις 2020-05-21 21:42, Nick Kossifidis έγραψε:
> Στις 2020-04-24 20:12, Nick Kossifidis έγραψε:
>> This patch series adds kexec/kdump and crash kernel
>> support on RISC-V. For testing the patches a patched
>> version of kexec-tools is needed. The patch is still
>> a work in progress but a draft version can be found at:
>> 
>> http://riscv.ics.forth.gr/kexec-tools.patch
>> 
> 
> Any comments / feedback on this ? Should we get it in ?
> 
> Regards,
> Nick

Anyone ?

