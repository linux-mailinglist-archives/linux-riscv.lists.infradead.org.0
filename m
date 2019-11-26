Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A542110A474
	for <lists+linux-riscv@lfdr.de>; Tue, 26 Nov 2019 20:26:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DgX3bPKLc1fWI4E1SzNWYt8/ZSjWIaT+dsHHk84aL54=; b=llI+3DDESA3PE8
	qonwNv6F6ELnRPkraXjGwjbD0e21ILr4ivrw6KP29GH0xpJDzH0EkRuX8G4O6zaYgwyx82KzXz/Tx
	KUuu1UXJ5KYVPyrv8eqNk/rVYJkEhnz7EIstvU+xg8di6Cncpk8OkrmkZOf+H1wxv+XlT/l2H/ISG
	7dtfp//h0D0G6rUDXnXIMdnMNUfS5en9dzVMtJiECdCMUZMQCpRTnKaAUeW4cItTmWnSWrWVZ3AR0
	8WJrh2LQLNbueQ9JfYX+LcXwWqSvon7XMJRcwrTcCGH21aNgM9215znAcaCVTmMIIo5so40ILmgCH
	nY8jTEjO3uV+in2nSLqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZgU5-0005Kg-Sz; Tue, 26 Nov 2019 19:26:49 +0000
Received: from mail-qv1-xf44.google.com ([2607:f8b0:4864:20::f44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZgU2-0005JZ-Qy
 for linux-riscv@lists.infradead.org; Tue, 26 Nov 2019 19:26:48 +0000
Received: by mail-qv1-xf44.google.com with SMTP id s18so7804745qvr.4
 for <linux-riscv@lists.infradead.org>; Tue, 26 Nov 2019 11:26:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=sy4O0jIBu7sikzaZw9xPpxh7Hoq+uKc8+wAUrCduRmI=;
 b=IaKSoBya95ZVS21LtECbNBD2W/zUXL1u2xXRgoUR/j/aEKqZ167dEPDfmKpZMC1AeW
 Xg//KufTNFz3cwLpcfkF48sEPUG7RvUdkZuTMwF5Wxk/rYwK9cr5m1n/xs1s47OQF1LX
 wIRTiWM4+W00fXHH25WXQ/9zQKzgE3fc1oM4VbFX+/gKDLXX+fxoEqio9n5k46feajTB
 PDDJ3l3ur19BBHo9NY5H3O+d342szEJXEKsR8TzQ+lqtUmqrmM8Kk2oOWRq6DxVUc2UM
 YyANOG3hESvbrutjKZiy6cPzqU2kqfEGT4fwvIaRX42BMaTEC2iVfOVp5ohyx7sUrC0U
 W2/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=sy4O0jIBu7sikzaZw9xPpxh7Hoq+uKc8+wAUrCduRmI=;
 b=BywnpMwWqPxSaeq6jcE0UYy6urM2nuPEcCoJKAOA61K85JBLGyg6ja7rZR2DL2/E8w
 kBGZUsujbPHospBSKCHK02H0d5Zlk0BYrANKTFLad7DJLshO41gMCQraBPLj1fgOSfbV
 T8qkMLQQG52aP1CMD1/+BW4a6V70nV7atomhV6Q5FM74Ms50KEWed6NCfaqqgEkJT9y4
 rufGl0ZcIrebYFn57wm2Ws79QoK/xO6P7S8ZhJQ0/F7Yw5OYBsukn366qWYNLFehnMFJ
 eif4PQfhGW7ghGhBijdFf8Edhf3HIKnEEaBoMjRb9KA3eAQgJzVovfTF9Er21eX+nlnh
 3dLQ==
X-Gm-Message-State: APjAAAVqoGRV392SlzPYy9GI4MYzW3gAjgzCotl4PuZgnrork3wNiY7t
 YBgYdJ4q2LoOn6t8DbyfV2d5tNwN/meLjO0mSETI8KOOYb69Hg==
X-Google-Smtp-Source: APXvYqygvCYs5HhYtbjMCao7/k5cvnH8pQnn8YY1qYrJ7tGzS5X0OYUmkkOGCXnR18LGDROl0WI//k/FJmi5NDK3YQc=
X-Received: by 2002:a05:6214:707:: with SMTP id b7mr297023qvz.97.1574796402191; 
 Tue, 26 Nov 2019 11:26:42 -0800 (PST)
MIME-Version: 1.0
References: <mhng-0a2f9574-9b23-4f26-ae76-18ed7f2c8533@palmer-si-x1c4>
 <87d0yoizv9.fsf@xps13.shealevy.com> <87zi19gjof.fsf@xps13.shealevy.com>
 <CAJ+HfNhoJnGon-L9OwSfrMbmUt1ZPBB_=A8ZFrg1CgEq3ua-Sg@mail.gmail.com>
 <87o8wyojlq.fsf@xps13.shealevy.com>
 <CAJ+HfNiq9LWA1Zmf_F9j23__K2_NqcfQqRA5evGVP5wGzi881w@mail.gmail.com>
In-Reply-To: <CAJ+HfNiq9LWA1Zmf_F9j23__K2_NqcfQqRA5evGVP5wGzi881w@mail.gmail.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Tue, 26 Nov 2019 20:26:30 +0100
Message-ID: <CAJ+HfNgsrFv0zgLy-CORXs-gOtiW2a3Sf=RQ6yDP5akDT+_-kg@mail.gmail.com>
Subject: Re: [PATCH] RISC-V: Load modules within relative jump range of the
 kernel text.
To: Shea Levy <shea@shealevy.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_112646_898702_071CDA5D 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bjorn.topel[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Netdev <netdev@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, albert@sifive.com,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gVHVlLCAyNiBOb3YgMjAxOSBhdCAxNzo0MywgQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxA
Z21haWwuY29tPiB3cm90ZToKPgo+IE9uIFR1ZSwgMjYgTm92IDIwMTkgYXQgMTQ6MjUsIFNoZWEg
TGV2eSA8c2hlYUBzaGVhbGV2eS5jb20+IHdyb3RlOgo+ID4KPiA+IEhpIEJqw7ZybiwKPiA+Cj4g
PiBVbmZvcnR1bmF0ZWx5IEknbSBub3Qgc3VyZSB3aGF0IG1vcmUgaXMgbmVlZGVkIHRvIGdldCB0
aGlzIGluLCBhbmQgSSdtCj4gPiBpbiB0aGUgbWlkZGxlIG9mIGEgbW92ZSBhbmQgd29uJ3QgaGF2
ZSBlYXN5IGFjY2VzcyB0byBteSBSSVNDLVYgc2V0dXAKPiA+IGZvciB0ZXN0aW5nLiBJIGRvbid0
IHRoaW5rIHlvdSBjYW4gY291bnQgb24gbWUgZm9yIHRoaXMgb25lLgo+ID4KPgo+IFRoYW5rcyBm
b3IgZ2V0dGluZyBiYWNrIHF1aWNrbHkhIE5vIHdvcnJpZXMsIEknbGwgcGljayBpdCB1cCEKPgoK
SSBqdXN0IHB1bGxlZCBpbiB5b3VyIHBhdGNoIGluIG15IHNlcmllcyBbMV0gKGl0J3Mgbm90IGRv
bmUgZm9yCnN1Ym1pc3Npb24geWV0LCBidXQgcGFzc2VzIGFsbCB0ZXN0cyk7IEp1c3QgdG8gZ2V0
IHRoZSBpZGVhLiBSZWFkaW5nCnVwIG9uIHRoZSB0aHJlYWQsIGl0IGxvb2tzIGxpa2Ugd2UgY2Fu
IHNoYXJlIHNvbWUgbW9yZSBiZXR3ZWVuIHRoZQphcmNocyAobWlwcykuCgoKVGhhbmtzLApCasO2
cm4KClsxXSBodHRwczovL2dpdGh1Yi5jb20vYmpvdG8vbGludXgvdHJlZS9ydjY0LWJwZi1qaXQt
YmNjCj4KPiBDaGVlcnMsCj4gQmrDtnJuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1yaXNjdiBtYWlsaW5nIGxpc3QKbGludXgtcmlzY3ZAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJpc2N2Cg==
