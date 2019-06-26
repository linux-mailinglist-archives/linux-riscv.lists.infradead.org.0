Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D53A656863
	for <lists+linux-riscv@lfdr.de>; Wed, 26 Jun 2019 14:14:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=u+ihOskFmgSUuJL3tRsWpra8E8sGv5reYDGqFo0jevY=; b=CRFV54U9WD/tYfyMunHOimO6V
	k5DnR9IX0AxztAP8on2hzxzZZtRBwbEPEVI8Wz+NF3BSQ38WvwUp03Y+SFzoRn40KwI8evFAhT/5y
	N4ufrdrSVVOPyGxgNLBf+OLeVeU1fMYw7mHLQ5SRxPWf13qYV1wNlfnXgkguEElOdkXL/q36aiJBb
	bst8DenO4Y+RhM+jdSe38l5yIW/836i62rv1hH7CqQFAPssVpAfoSetU8HeQtoRpJi0xJOlmCtRoc
	vxBoLLQ6L2668w36JdJWp5XBV3Q39SRiJl+zHAFZfL6DMFeLUbaRjK0NwtnwvtcUuFoVQJ/M3w+bM
	vt5u5z/TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg6oe-0003cG-Qr; Wed, 26 Jun 2019 12:14:20 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg6oX-0003bf-MG; Wed, 26 Jun 2019 12:14:15 +0000
Received: by mail-pg1-x543.google.com with SMTP id s27so1155715pgl.2;
 Wed, 26 Jun 2019 05:14:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=nE8JZHrKvZIjpzwoCOV4W+kZMdzp32CH3OhSv9DzAQA=;
 b=FkpiqxEmc1WKkr3sirer29jM7xKhdHyKj0fJ2SNPATI1XoRrgSCqtqr9u1BKAC5cXW
 YFlgxc/7PYtwZNZTxfldcM14QmtYCm5V+lOlEqpU9Hb19P2FtbAt3wmSsrs4kBJ6AZQF
 xNcQZqQR1b7/EuDIIVJO/0cj0Z7SHlyBVQdwSv7gbLf6RapeCmFI0xnvOW49BJh5bLeI
 RS4umvJZCdtSFtR5EIM67n/KRpXkwZYMwHaqEykhtlh1F41v969pTFQAuq90Bf8RkXxB
 sI6z8boSKMD/WDlvoH0rirK0/QKtqFKmzHexh6m20aylIOt7MKN0jHGhTlGHhSuKk+Hl
 h75A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nE8JZHrKvZIjpzwoCOV4W+kZMdzp32CH3OhSv9DzAQA=;
 b=jMlAZIFP7P7EIjD9roK/7PVw7vSlzDyxFJbUVzEcbEfDrw5XFWr0g/UOHMPmhcufwY
 VZ+QiprbYPZd7FgxKHkIlLdNJJdYrNWQ3PFPunH2DMFLgam8eqY8J1f5RT7qlxK2jvsG
 bvwWf1y40bTi9SVVAgLiuRqMD5yqSsEVKS7EAmdaDRhe2hHy++zvVtHDkgQ+Fzr6zOCZ
 FjHIjaDnc3zkLmBXhyzZoXT6yLlFz6HhC+cRC4NW/qJiW9bU/wr161yxOueKFUFCn4gr
 aISwQ+hGakO1seNXR54cnGEbvFV/pL7GZ55czEHwE0zFrOFaI9n6K5r3N+O/M0zrW93W
 VSPg==
X-Gm-Message-State: APjAAAURO2kv+D5zeXBY9g4Z0bE0Efcj4mPDzOxV7gn4vQRABFbPAuNp
 V2XhY9+PkngTmUg4D5TOcXQ02mo53nQ=
X-Google-Smtp-Source: APXvYqyl/rcV1NaUbh6KN9ZCyayU/jSJPecs/2fph6Nkb+9gPHbGA+Bn5bVK4tmxcfI91FmEViay7g==
X-Received: by 2002:a17:90a:214f:: with SMTP id
 a73mr4338153pje.21.1561551252708; 
 Wed, 26 Jun 2019 05:14:12 -0700 (PDT)
Received: from [10.44.0.192] ([103.48.210.53])
 by smtp.gmail.com with ESMTPSA id x128sm30778516pfd.17.2019.06.26.05.14.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Jun 2019 05:14:12 -0700 (PDT)
From: Greg Ungerer <gregungerer00@gmail.com>
X-Google-Original-From: Greg Ungerer <gerg@linux-m68k.org>
Subject: Re: [PATCH 08/17] binfmt_flat: consolidate two version of
 flat_v2_reloc_t
To: Geert Uytterhoeven <geert@linux-m68k.org>
References: <20190613070903.17214-1-hch@lst.de>
 <20190613070903.17214-9-hch@lst.de>
 <20190625222941.GA1343@ZenIV.linux.org.uk>
 <f8a61a8e-0469-a9d6-e0a1-01a4619d7363@linux-m68k.org>
 <CAMuHMdXkMh+pOqPNavmYAhKXTVT12nC5gKc10CJj_CXME+uhWQ@mail.gmail.com>
Message-ID: <a2567a04-ac83-408f-51a2-53d23fcc0c36@linux-m68k.org>
Date: Wed, 26 Jun 2019 22:14:06 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAMuHMdXkMh+pOqPNavmYAhKXTVT12nC5gKc10CJj_CXME+uhWQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_051413_751431_5DDA3A86 
X-CRM114-Status: GOOD (  16.92  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gregungerer00[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gregungerer00[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "moderated list:H8/300 ARCHITECTURE"
 <uclinux-h8-devel@lists.sourceforge.jp>, linux-xtensa@linux-xtensa.org,
 Michal Simek <monstr@monstr.eu>, linux-c6x-dev@linux-c6x.org,
 Linux-sh list <linux-sh@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Al Viro <viro@zeniv.linux.org.uk>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Geert,

On 26/6/19 6:18 pm, Geert Uytterhoeven wrote:
> Hi Greg,
> 
> On Wed, Jun 26, 2019 at 9:23 AM Greg Ungerer <gerg@linux-m68k.org> wrote:
>> On 26/6/19 8:29 am, Al Viro wrote:
>>> On Thu, Jun 13, 2019 at 09:08:54AM +0200, Christoph Hellwig wrote:
>>>> Two branches of the ifdef maze actually have the same content, so merge
>>>> them.
>>>>
>>>> Signed-off-by: Christoph Hellwig <hch@lst.de>
>>>> ---
>>>>    include/linux/flat.h | 6 ++----
>>>>    1 file changed, 2 insertions(+), 4 deletions(-)
>>>>
>>>> diff --git a/include/linux/flat.h b/include/linux/flat.h
>>>> index 2b7cda6e9c1b..19c586b74b99 100644
>>>> --- a/include/linux/flat.h
>>>> +++ b/include/linux/flat.h
>>>> @@ -69,15 +69,13 @@ struct flat_hdr {
>>>>    typedef union {
>>>>       unsigned long   value;
>>>>       struct {
>>>> -# if defined(mc68000) && !defined(CONFIG_COLDFIRE)
>>>> +#if defined(__LITTLE_ENDIAN_BITFIELD) || \
>>>> +    (defined(mc68000) && !defined(CONFIG_COLDFIRE))
>>>>               signed long offset : 30;
>>>>               unsigned long type : 2;
>>>>    # elif defined(__BIG_ENDIAN_BITFIELD)
>>>>               unsigned long type : 2;
>>>>               signed long offset : 30;
>>>> -# elif defined(__LITTLE_ENDIAN_BITFIELD)
>>>> -            signed long offset : 30;
>>>> -            unsigned long type : 2;
>>>>    # else
>>>>    #          error "Unknown bitfield order for flat files."
>>>>    # endif
>>>> --
>>>> 2.20.1
>>>>
>>>
>>> FWIW, I wonder if keeping that type is worth bothering.
>>> Something like
>>> old_reloc(__be32 reloc)
>>> {
>>>        u32 v = be32_to_cpu(reloc);
>>>        int offset, type;
>>>
>>> #if (defined(mc68000) && !defined(CONFIG_COLDFIRE))
>>>        /* old m68k uses unusual format - type is in lower bits of octet 3 */
>>>        type = v % 4;
>>>        offset = (int)v / 4;
>>> #else
>>>        /* everything else (including coldfire) has it in upper bits of octet 0 */
>>>        type = v >> 30;
>>>        offset = (int)(v << 2) >> 2; /* or (v & 0x1fffffff) - (v & 0x20000000) * 4 */
>>> #endif
>>>        ...
>>>
>>> and to hell with bitfields, aliasing unions, etc.  Unless I'm misreading
>>> the whole thing, that is...  Greg?
>>
>> I think you are right. This is much better.
>> The old mc6800 is the odd one out, the rest have it in network order,
>> and this makes that much clearer.
> 
> Is that correct for Microblaze, which can be big or little endian?

It is true for all architectures that use flat. All fields inside a
flat format binary are store in network order.

The final processing of the relocation entries in the elf2flt
converter tool:

    for (i=0; i<reloc_len; i++) reloc[i] = htonl(reloc[i]);

Regards
Greg



_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
