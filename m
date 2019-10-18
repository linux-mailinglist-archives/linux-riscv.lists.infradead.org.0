Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 464D5DBB89
	for <lists+linux-riscv@lfdr.de>; Fri, 18 Oct 2019 04:58:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UzDNiCwE25BqIws0xim2z8BXrtV7DSiKo2kvJhboQwQ=; b=A1EYnqAI2O0Tpo
	wCId9KkUMHrhZSZpT1MlE4gYyxPir85bniHN58p7FHCfUQ6Xc1A8Xh3cOPrQj09HJf64HG2lTvCGd
	9Cbl9ps066KHGE5CfrV1zTJl1eWRKvj7oMtaaY2/8mJ5PkaTLRH7y95iUqZhDGC/KCaE/2MYw+eM6
	Ko+jQfEbPorm+AZTS04f0hmAO6kKYgCT/IQWgOW/6MyXaYBD5M30rvp6Idl1SHVH+FHhk1HjP1yme
	rn2MnSMXm8bJRpvj7ae4Xhi4NjTnyiZv2aKpy4eSXlSYk5vuWp2EOBaE+T8qFyYeLBhWxx9a7Y28t
	yVq5GhWgYSyeJzjwmvpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLISy-0002Yw-19; Fri, 18 Oct 2019 02:58:12 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLISu-0002X2-Fs
 for linux-riscv@lists.infradead.org; Fri, 18 Oct 2019 02:58:09 +0000
Received: by mail-io1-xd41.google.com with SMTP id h144so5656823iof.7
 for <linux-riscv@lists.infradead.org>; Thu, 17 Oct 2019 19:58:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=6vl776tt39Djj97+yEKzgcDA8S7SdrfVeVZOrfDrtPA=;
 b=dU09HL7YiUwk/maqwxoin70k8Ds5wcr8FCr03pp80PJHAKOp3OReif4boc/KD+b2DM
 J85QCudqpCs1TCoMc9wVPTRMRU0STpgD/1QlgpUBNod7Cl0dHQT0+cS+GqwwKn1pTQoh
 qDbr/RW6USHBn1Lwi3PUSRcsIdwJasq0mwWOSN/6upWfMh7UN21nQLP+JZJjujE1EJbf
 sUB+YacJewIY1v4hglgcqfHidAp7zxIlzY5AWW/L7aOkuYBKghGCKY1Qjy7HoZc4IpvO
 ig+ikN0mJIZGCo3VIdRDOweYsfcUzSaai36eoZbFKR8i5RlAmAWDLaVCq5E1yt0FO8qa
 Fflg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=6vl776tt39Djj97+yEKzgcDA8S7SdrfVeVZOrfDrtPA=;
 b=RJwiGEbJqNoeJXrjbax6V56Huj//z9lsR9r16XNmVgcCLDVJZiZ4FFENTVkKX6ShJb
 AyR1Uo3Y3DCq9UbFlfT4NSs3Ap/8WMdDK+kNDuP2Enplj5PcS5Fb45HptLPQz5xSdJmN
 0G7gSxZxB8+fwLS/xOqwUG5VNSWdnIWzn06+n3LuQHZUBpojO21Lwu5e/kFi8Ngb7IMI
 3PsEoyn0Ut+83AIiIkknz57pJ3X7xa7D90YxRfgqmS2xveW2rNXLsDUnwBA/wxb74A9a
 oGjXkE3o0zUuEknxcUHpIO663FPfrXzF2n2CCSiZD11hOriRF+vndUpGkp712yVvYdMw
 ELSw==
X-Gm-Message-State: APjAAAVPWMOg7nqrNkVwChwsxI2EYx+nWgQiB+IjHb34U/VT1Z2tuQhs
 lhfPQ9+jLYMEvWawiZ/NCqI4kQ==
X-Google-Smtp-Source: APXvYqzmzVECICRUhTk0jHEyAsknDFm8SCMbAaOwaHumsoit6u726yoCOL3R0yOSUQ676wBRE6GLoQ==
X-Received: by 2002:a05:6602:1c4:: with SMTP id
 w4mr6000255iot.153.1571367487601; 
 Thu, 17 Oct 2019 19:58:07 -0700 (PDT)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id o66sm2100434ili.45.2019.10.17.19.58.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 19:58:06 -0700 (PDT)
Date: Thu, 17 Oct 2019 19:58:04 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Nick Hu <nickhu@andestech.com>, Andrey Ryabinin <aryabinin@virtuozzo.com>
Subject: Re: [PATCH v3 1/3] kasan: Archs don't check memmove if not support it.
In-Reply-To: <ba456776-a77f-5306-60ef-c19a4a8b3119@virtuozzo.com>
Message-ID: <alpine.DEB.2.21.9999.1910171957310.3156@viisi.sifive.com>
References: <cover.1570514544.git.nickhu@andestech.com>
 <c9fa9eb25a5c0b1f733494dfd439f056c6e938fd.1570514544.git.nickhu@andestech.com>
 <ba456776-a77f-5306-60ef-c19a4a8b3119@virtuozzo.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_195808_560986_66A88293 
X-CRM114-Status: UNSURE (   8.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kstewart@linuxfoundation.org, aou@eecs.berkeley.edu, alankao@andestech.com,
 corbet@lwn.net, gregkh@linuxfoundation.org, palmer@sifive.com,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 kasan-dev@googlegroups.com, linux-mm@kvack.org, alexios.zavras@intel.com,
 Anup.Patel@wdc.com, glider@google.com, allison@lohutok.net, tglx@linutronix.de,
 atish.patra@wdc.com, linux-riscv@lists.infradead.org, dvyukov@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 17 Oct 2019, Andrey Ryabinin wrote:

> On 10/8/19 9:11 AM, Nick Hu wrote:
> > Skip the memmove checking for those archs who don't support it.
>  
> The patch is fine but the changelog sounds misleading. We don't skip memmove checking.
> If arch don't have memmove than the C implementation from lib/string.c used.
> It's instrumented by compiler so it's checked and we simply don't need that KASAN's memmove with
> manual checks.

Thanks Andrey.  Nick, could you please update the patch description?

- Paul


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
