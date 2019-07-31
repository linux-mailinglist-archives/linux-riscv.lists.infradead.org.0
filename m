Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F5B7BB50
	for <lists+linux-riscv@lfdr.de>; Wed, 31 Jul 2019 10:14:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5kfUQaIh6TdHzAZPiAahUCgBwZc7BF4Wlz1BVQ74KjE=; b=vCqtAiMIVliq3P
	xCsq0fNkQ/3X8toip7QmBKA6tm4uFBFwVzFA6q7Bi19COK8uJc5oud6DDQEtgZ5rI6fQ2ZZVOC+EF
	/csRmvYhBaFpxUrKWBFoO6BeZvnD6rfYddy5B3coGHNQ19Ooii8pF7+2RnpQ5BH60NMetpatcai66
	pQYC+f9k2MjZctRUO3CwjnIs1U3x+sgJnrgCbpxgi3ISXBQ+prTruC/ouzJbq9Y05EYbQuRHIYF2T
	E3Y5wRI+iojc5KBuB6fvVW5i9BYxCuKhpJ6RvkKqiJ/TJNqWVmycKYjdFVpl996TVb6xUXgTzDPGD
	Egm/aJyxtnsmnkhfICHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsjkD-0001Cn-NK; Wed, 31 Jul 2019 08:13:57 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsjj8-0000vg-Er
 for linux-riscv@lists.infradead.org; Wed, 31 Jul 2019 08:12:52 +0000
Received: by mail-wm1-x343.google.com with SMTP id 207so59758183wma.1
 for <linux-riscv@lists.infradead.org>; Wed, 31 Jul 2019 01:12:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=h1xbpS31Um9ACi/3lEWxjVeMGYqjw36yAyGt/XcQA/g=;
 b=IFBIzeK7cIOpoaVz3DOqIuEpc8WGgadKdzyuVZmOCfmMZfdFeNMTdsCy+yVRxAWDyN
 neUbuCnxntCRCkhNULAMJ5vrC4YNpSKH89gaFe5W8aJIoKqLPsYfr2L/FFhslTNYiURx
 +tH451vDwLOGLmQEwKrXzg8A6C+I7RTpTrir7J0Eqz20sE8UcNp1tOLZKFMhyeyS5pwd
 lvWxi33vYfYpKxre9xVhzFfyyFQKREiqXysLibNIkIwHa6VOOtD7ikEzKe//MYZCSeR/
 Dri+g+BLUWN//Jr3U6mc8XGPWlT1vTjKkkTZDN0rvA6PdfI2Qifb8/G7yhqtLd1F+ZN4
 x3ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=h1xbpS31Um9ACi/3lEWxjVeMGYqjw36yAyGt/XcQA/g=;
 b=bQ3ANfOKziYN1snFCIxQrDi/7dQcH9xUTP9C0+fuLABOrVhcDwReXksFn7hjm9mKn6
 Be4D/2lAu14yOQpI36S/mAEUidtvbOMmjtnSxkDDTjG1ZK54uvMTmIn5AP6yiG61gSPk
 BZQngaQgWQ31mIzEkDL9L4AYk6QVCytcF+KdiTgsnrQtsdWLZ85XPvxLvThpvY/TQ7yY
 IdyKTOqQL0OpSDiqh7CbWwYzKa7MbF7jlNw38KrzVm9PuMKXO8f271u19IfAdaHJIsyr
 P4S9k6mrokdlOLjcYOmlD12qoMeT0CkUPlHEGshTg9naYn+J3mpHpho7QAF4hXKsuxJA
 io3w==
X-Gm-Message-State: APjAAAUN1E2KdP2DpCCd2N/5ulXpqgpx6nbaoiyssmvFU39dmx9i5qTR
 HY9Ktvk4ZF08QUgF/HuBbvs823Z6tB5X9ks1baA=
X-Google-Smtp-Source: APXvYqy2u3GtkbUntMukXdx5UhWihiGXJiIZ/1HzIJwInNrBZPKSU2PRlgvV9TW0MtBGS2Xbpq4M2NHFk6DYjGhdu0g=
X-Received: by 2002:a05:600c:254b:: with SMTP id
 e11mr102060155wma.171.1564560768499; 
 Wed, 31 Jul 2019 01:12:48 -0700 (PDT)
MIME-Version: 1.0
References: <mvm4l33adof.fsf@suse.de>
 <37DB11CB-89AE-42C3-8DA2-7A65F6338A4B@wdc.com>
 <mvmsgqm8xlc.fsf@suse.de>
In-Reply-To: <mvmsgqm8xlc.fsf@suse.de>
From: Anup Patel <anup@brainfault.org>
Date: Wed, 31 Jul 2019 13:42:37 +0530
Message-ID: <CAAhSdy0NdStsJ+Lgo22VT=gzdiOnv40y0abxc-Cvt4cewMOpaQ@mail.gmail.com>
Subject: Re: 5.3-rc2: Found incompatible CPU
To: Andreas Schwab <schwab@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_011250_502394_452057FE 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Atish Patra <Atish.Patra@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gV2VkLCBKdWwgMzEsIDIwMTkgYXQgMTowNiBQTSBBbmRyZWFzIFNjaHdhYiA8c2Nod2FiQHN1
c2UuZGU+IHdyb3RlOgo+Cj4gT24gSnVsIDMxIDIwMTksIEF0aXNoIFBhdHJhIDxBdGlzaC5QYXRy
YUB3ZGMuY29tPiB3cm90ZToKPgo+ID4g77u/T24gNy8zMC8xOSwgNTo1MSBBTSwgImxpbnV4LXJp
c2N2IG9uIGJlaGFsZiBvZiBBbmRyZWFzIFNjaHdhYiIgPGxpbnV4LXJpc2N2LWJvdW5jZXNAbGlz
dHMuaW5mcmFkZWFkLm9yZyBvbiBiZWhhbGYgb2Ygc2Nod2FiQHN1c2UuZGU+IHdyb3RlOgo+ID4K
PiA+ICAgICBUcnlpbmcgdG8gYm9vdCA1LjMtcmMyIG9uIHRoZSBIaUZpdmUgSSdtIGdldHRpbmcg
IkZvdW5kIGluY29tcGF0aWJsZQo+ID4gICAgIENQVSIgZm9yIGVhY2ggY3B1LCB3aGljaCBtZWFu
cyB0aGF0IG9mX2RldmljZV9pc19jb21wYXRpYmxlKG5vZGUsCj4gPiAgICAgInJpc2N2IikgaXMg
ZmFpbGluZy4gIEFueSBpZGVhPwo+ID4KPiA+IFByb2JhYmx5IHdyb25nIERUID8gSWYgeW91IGFy
ZSB1c2luZyBPcGVuU0JJLCB5b3UgbmVlZCB0byBwb2ludCB0byB0aGUgY29ycmVjdCBEVCBidWls
dCBieSBrZXJuZWwgYnkgdXNpbmcgRldfUEFZTE9BRF9GRFRfUEFUSC4KPgo+IEkgZG9uJ3Qgc2Vl
IGFueSBkaWZmZXJlbmNlIGJldHdlZW4gdGhlIDUuMiBhbmQgNS4zIERUcy4KClNvcnJ5IGZvciBk
ZWxheSBpbiByZXNwb25zZS4uLgoKSSBoYWQgc2VlbiB0aGlzIGlzc3VlIHdoZW4gYm9vdGluZyA1
LjMtcmMxIGZyb20gVS1Cb290LgoKRXZlbnR1YWxseSwgSSBmaWd1cmVkIHRoYXQgTGludXgtNS4z
LXJjMSBpcyBwbGFjaW5nIHNvbWUgZGF0YSBzdHJ1Y3R1cmVzIGF0CmVuZCBvZiBSQU0gd2hpY2gg
aXMgY29ycnVwdGluZyBEVEIgcGxhY2VkIGF0IGVuZCBvZiBSQU0uCgpBIHNpbXBsZSBmaXggZm9y
IHRoaXMgaXMgdG8gZXhwbGljaXRseSBURlRQIERUQiB0byAke2ZkdF9hZGRyX3J9IG9uIFUtQm9v
dAphbmQgcGFzcyAke2ZkdF9hZGRyX3J9IGFzIERUQiBhZGRyZXNzLgoKWW91IGNhbiBhbHNvIGNv
cHlpbmcgRFRCIGZyb20gJHtmZHRjb250cm9sYWRkcn0gdG8gJHtmZHRfYWRkcl9yfSBhbmQKcGFz
cyAke2ZkdF9hZGRyX3R9IGFzIERUQiBhZGRyZXNzLgoKSSBoYXZlIGFscmVhZHkgc2VuZCBkb2N1
bWVudGF0aW9uIHVwZGF0ZSBwYXRjaCB0byBVLUJvb3Q6Cmh0dHBzOi8vd3d3Lm1haWwtYXJjaGl2
ZS5jb20vdS1ib290QGxpc3RzLmRlbnguZGUvbXNnMzM1ODgyLmh0bWwKClJlZ2FyZHMsCkFudXAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LXJp
c2N2IG1haWxpbmcgbGlzdApsaW51eC1yaXNjdkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcmlzY3YK
