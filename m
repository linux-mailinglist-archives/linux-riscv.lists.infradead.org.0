Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E06956345
	for <lists+linux-riscv@lfdr.de>; Wed, 26 Jun 2019 09:24:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/i5HwRim4rse2/XkybRRhPEGeZDtoEAa5jizMkvg6kY=; b=QUbBw66wunZnNDP9qGF7Ylf28
	DiJgZ6AGvkAs30cANyKXTOr6hYuSGCdK8uLr6s/fbdz+vLvyh0aT7nC+iUHJzgxnV0qbegAPsgWiU
	ZdsUF82G3YQ9W5hmPTxas0ReCH6ORiBHuB17Ly2tRB8lnmStl5byCKyADh6sx4lu+mVO4El4b8pjq
	B6kEzEKypcZyBTh8VppCrdvLRpizhbLwcnZWo5S9f3kT06kH+v80R+Sdc/hmHbCGomGojGp7oO/q5
	RKF9BSItKiMhZz5+GHBaFYFExbC8QPxavxywTotfyXo1T26EoFXZaBrlHhml3LkAeNFg0nPGlL/DM
	YKN5WTDUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg2Hx-0002sy-Mc; Wed, 26 Jun 2019 07:24:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg2Gz-0002Ly-Bu; Wed, 26 Jun 2019 07:23:20 +0000
Received: from [10.44.0.22] (unknown [103.48.210.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1008020665;
 Wed, 26 Jun 2019 07:23:13 +0000 (UTC)
Subject: Re: [PATCH 08/17] binfmt_flat: consolidate two version of
 flat_v2_reloc_t
To: Al Viro <viro@zeniv.linux.org.uk>, Christoph Hellwig <hch@lst.de>
References: <20190613070903.17214-1-hch@lst.de>
 <20190613070903.17214-9-hch@lst.de>
 <20190625222941.GA1343@ZenIV.linux.org.uk>
From: Greg Ungerer <gerg@linux-m68k.org>
Message-ID: <f8a61a8e-0469-a9d6-e0a1-01a4619d7363@linux-m68k.org>
Date: Wed, 26 Jun 2019 17:23:11 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190625222941.GA1343@ZenIV.linux.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_002317_761114_D17EE4F5 
X-CRM114-Status: GOOD (  15.77  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: uclinux-h8-devel@lists.sourceforge.jp, linux-xtensa@linux-xtensa.org,
 Michal Simek <monstr@monstr.eu>, linux-c6x-dev@linux-c6x.org,
 linux-sh@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-m68k@lists.linux-m68k.org, linux-riscv@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


On 26/6/19 8:29 am, Al Viro wrote:
> On Thu, Jun 13, 2019 at 09:08:54AM +0200, Christoph Hellwig wrote:
>> Two branches of the ifdef maze actually have the same content, so merge
>> them.
>>
>> Signed-off-by: Christoph Hellwig <hch@lst.de>
>> ---
>>   include/linux/flat.h | 6 ++----
>>   1 file changed, 2 insertions(+), 4 deletions(-)
>>
>> diff --git a/include/linux/flat.h b/include/linux/flat.h
>> index 2b7cda6e9c1b..19c586b74b99 100644
>> --- a/include/linux/flat.h
>> +++ b/include/linux/flat.h
>> @@ -69,15 +69,13 @@ struct flat_hdr {
>>   typedef union {
>>   	unsigned long	value;
>>   	struct {
>> -# if defined(mc68000) && !defined(CONFIG_COLDFIRE)
>> +#if defined(__LITTLE_ENDIAN_BITFIELD) || \
>> +    (defined(mc68000) && !defined(CONFIG_COLDFIRE))
>>   		signed long offset : 30;
>>   		unsigned long type : 2;
>>   # elif defined(__BIG_ENDIAN_BITFIELD)
>>   		unsigned long type : 2;
>>   		signed long offset : 30;
>> -# elif defined(__LITTLE_ENDIAN_BITFIELD)
>> -		signed long offset : 30;
>> -		unsigned long type : 2;
>>   # else
>>   #   	error "Unknown bitfield order for flat files."
>>   # endif
>> -- 
>> 2.20.1
>>
> 
> FWIW, I wonder if keeping that type is worth bothering.
> Something like
> old_reloc(__be32 reloc)
> {
> 	u32 v = be32_to_cpu(reloc);
> 	int offset, type;
> 
> #if (defined(mc68000) && !defined(CONFIG_COLDFIRE))
> 	/* old m68k uses unusual format - type is in lower bits of octet 3 */
> 	type = v % 4;
> 	offset = (int)v / 4;
> #else
> 	/* everything else (including coldfire) has it in upper bits of octet 0 */
> 	type = v >> 30;
> 	offset = (int)(v << 2) >> 2; /* or (v & 0x1fffffff) - (v & 0x20000000) * 4 */
> #endif
> 	...
> 
> and to hell with bitfields, aliasing unions, etc.  Unless I'm misreading
> the whole thing, that is...  Greg?

I think you are right. This is much better.
The old mc6800 is the odd one out, the rest have it in network order,
and this makes that much clearer.

Regards
Greg



_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
