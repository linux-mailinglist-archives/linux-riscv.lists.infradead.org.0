Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB08537CFE
	for <lists+linux-riscv@lfdr.de>; Thu,  6 Jun 2019 21:10:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=kbSy0i7zf60fKckttPdodocyofDNctvb/0u3DnS0hAI=; b=czjx6mK2CIHI1j5WKfYGrHdbf
	jZ1f9HvuC2sVeyXPF2FbRd25JAeMSlytDQBdP0pEwni/dAuHa13U/opq8AHgrI1hN0xZEBbA62lC7
	rEv1Jw4IH5CkbCQ43V2drxsqFDvLKIxdVt22neJ5LoPI+7P2Y8jjMFwuR2YYPjopkFeoqlyhAw+QL
	r4nycnc4vC/DOfWyNMNgRMgv2N1dJc0+huD56/A+qfQ6uC+icCo4VNAIJhATBCGG4ZMp4G8DI8T5v
	zEYLcKjIFnVRHd/b1Fmohcszyu1EY0idQnw2exLf7aJXHW0dNbag11QDjIOhKZD+jxMhq9mU6fCVr
	Zxw+liVpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYxmW-0006J0-Sm; Thu, 06 Jun 2019 19:10:36 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYxmU-0006IC-60
 for linux-riscv@lists.infradead.org; Thu, 06 Jun 2019 19:10:35 +0000
Received: by mail-pf1-x444.google.com with SMTP id a186so2081554pfa.5
 for <linux-riscv@lists.infradead.org>; Thu, 06 Jun 2019 12:10:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=iq2ZMOKhxG40k3ZjkkAfD8/mhEY6iwy4v663CmYVX5Q=;
 b=enaoKJ57+AWkQ/VcvXkyxXhGlqXFGFOA4xotHL8PViRCGoywuFOLat/NWbwVKMJRsv
 /6zQrNaJ/cDsC6+AIUtQfT7+hSekvAbQRzbG+qaghYV1vBxnYVc15Dubhn5p/wGgF9C0
 qYorLZzRxLxQgeQRYQWkc09mR1WoWRq8CbOmrM88g/lRcS5jm0LYcxiabWtbQHrvNkaM
 dIxA9UpmM+zdTDic/w9UuUE7kWVNHRKuf0BRjNIM+PHVO3d+u2FGXZ3twojCUvuWkrvx
 Rk5DdAzQV1rEkUg4pyUMZ3jneiFRWmLJcal3R4IGVvVE8z/g47u+QICQFjAskvWhaAKk
 mZgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=iq2ZMOKhxG40k3ZjkkAfD8/mhEY6iwy4v663CmYVX5Q=;
 b=k1Og+kq3i0U5fdqNhykJ1ypxFG5YadWvhJeW3Qv3h8AZXs/pA+FKxCReQeIY4g8tNu
 oYro3xv2Q25F6LCeN2qwToRhfJ1MAvgIwsaYWdQpfWpc44wq+C6nXzEocahhVDy8LzxS
 jdwVgVZ3Qfxgp3Cy2VV+6eL1ZEXSciLRBc3qFynOlZ28wyrR8FPKsKcsBq+BXCSziEUZ
 ES23KEvYUu69NHhA0mOzJVXaCegsfqu14gkXlC0wb0UJoygkMd6Y/VEOLa2FKD6d32Rg
 /Y8EgFmMRfk7bOFwPm0Iwl5DhpTrk78cCKKHRc63W4uriG9GPWiONt1ZGyXb7wLiNgHG
 vQ7w==
X-Gm-Message-State: APjAAAWr/LJx3iDDfRbb/VldCI5IaHvonUaBNCC0sXEJDhKwGbU7sRUY
 bjRD0+2HHZ+lqYEUTgYRFNIU0mAHWwHvfg==
X-Google-Smtp-Source: APXvYqwd5dsw5v4s6YM7SnjJ88V7ez2g5lofdM2+M1Q+bnvTbwqCj3SskP3oB92MGYpTz2nDFDvQtg==
X-Received: by 2002:a62:750c:: with SMTP id q12mr33795301pfc.59.1559848232489; 
 Thu, 06 Jun 2019 12:10:32 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id z15sm2307084pge.40.2019.06.06.12.10.30
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 06 Jun 2019 12:10:31 -0700 (PDT)
Date: Thu, 06 Jun 2019 12:10:31 -0700 (PDT)
X-Google-Original-Date: Thu, 06 Jun 2019 12:09:29 PDT (-0700)
Subject: Re: [PATCH] RISC-V: Break load reservations during switch_to
In-Reply-To: <20190606090518.GB1369@infradead.org>
From: Palmer Dabbelt <palmer@sifive.com>
To: Christoph Hellwig <hch@infradead.org>
Message-ID: <mhng-ea7cfd57-8e3a-49e6-8f95-74c009001774@palmer-si-x1c4>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_121034_288884_03E77921 
X-CRM114-Status: GOOD (  13.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: me@carlosedp.com, linux-kernel@vger.kernel.org, joel@sing.id.au,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 marco@decred.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 06 Jun 2019 02:05:18 PDT (-0700), Christoph Hellwig wrote:
> On Wed, Jun 05, 2019 at 04:17:35PM -0700, Palmer Dabbelt wrote:
>>  	REG_S ra,  TASK_THREAD_RA_RA(a3)
>> +	/*
>> +	 * The Linux ABI allows programs to depend on load reservations being
>> +	 * broken on context switches, but the ISA doesn't require that the
>> +	 * hardware ever breaks a load reservation.  The only way to break a
>> +	 * load reservation is with a store conditional, so we emit one here.
>> +	 * Since nothing ever takes a load reservation on TASK_THREAD_RA_RA we
>> +	 * know this will always fail, but just to be on the safe side this
>> +	 * writes the same value that was unconditionally written by the
>> +	 * previous instruction.
>> +	 */
>> +#if (TASK_THREAD_RA_RA != 0)
>
> I don't think this check works as intended.  TASK_THREAD_RA_RA is a
> parameterized macro, thus the above would never evaluate to 0. The
> error message also is rather odd while we're at it.

OK, I didn't try it.  The resulting number can never be non-zero, which is why
I couldn't come up with an error message that made sense.  I'm not opposed to
dropping the check.

>> +#if (__riscv_xlen == 64)
>> +	sc.d  x0, ra, 0(a3)
>> +#else
>> +	sc.w  x0, ra, 0(a3)
>> +#endif
>
> I'd rather add an macro ala REG_S to asm.h and distinguish between the
> xlen variants there:
>
> #define REG_SC		__REG_SEL(sc.d, sc.w)

Ya, I guess I was just being lazy.  I'll put that in a v2.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
