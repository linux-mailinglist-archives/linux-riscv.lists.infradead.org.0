Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F88933290
	for <lists+linux-riscv@lfdr.de>; Mon,  3 Jun 2019 16:44:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ktGrmVndVaxXgw2SwCECRAeb7oD98Sdc+WnrkYY867U=; b=WWMBjGqyoI7p6e
	Im0wnsn90lvIfvZqlSnaCU3hyARFk0OVp143BAnMhkNSusMzf8wCqzMOwWUqYAMX5pwav6W+hTu7d
	aymfkh6Cw5Z+sO404EK+4o/jPoo6i9LpcDh64akb3fDroy6+lv41+CnJV9QT8IxyPMOsF0OZQbGbD
	l964L67UY4imNojvN/HwK+dipJp+ljMDlzehQcjv7+obXlzS3OZMA6ben7vWkbnEGnRDvlChtN2FI
	oXdwMzha/jb1rR/gdRkPRHEnlaVSUcthPwG16vqx2M6uPI9ygTvswqR3ysCcC7oIkwxiSRBTE3txE
	rVQrz5AyHiTjcxjDMP8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXoCR-0004PI-4F; Mon, 03 Jun 2019 14:44:35 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXoCN-0004NU-Dr
 for linux-riscv@lists.infradead.org; Mon, 03 Jun 2019 14:44:32 +0000
Received: by mail-it1-x143.google.com with SMTP id j204so21620523ite.4
 for <linux-riscv@lists.infradead.org>; Mon, 03 Jun 2019 07:44:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=xrrbgamLALOh/wLsmsS3epttP5xQzMWAPXpkqfDmm9A=;
 b=KFeDXnXF0Z3ikG8rMxWICrGvtfotWO1+yvZcbJjk8ihBhcN0ZcsjsgtxYt6R0AyfSm
 D8h0AX8NR4yNkxuNqN+BzwtYnv9HEf8zGpWqBIPw2Yy20I9dZzOVkdiRHMW0872Zbe6y
 F2nHdzjDwLWm/SZJ9Qd6WJw1Ko/xP4TiALe6nsCQebP45gTfYj+F/D3z9LtlEihGDySJ
 0nInukp+limrb2iRxcAMPxWWS3njiQamvYD98TkhnbMSmnDKzISNvs+v9D0ApCKwYjK1
 Z9Qd5tD7oq+JH+BGXihrk6p5SpNTafMgEkxfBOT4Io0bRAwdhYWnjpmSJkOs2iVPQwxw
 eB8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=xrrbgamLALOh/wLsmsS3epttP5xQzMWAPXpkqfDmm9A=;
 b=Bc7fbkWPSa56LnJRDWLSd2dFoZbgSEBjNiuru56ufNx9FvO29Gf4lWaO8HyZdDBRB7
 8omWXVutBMcvMKKR+OC4KiFmoFNFJp+/Ik0Z060TbwAw/5LMcEXNVtw+MJhqByfqLx+/
 rdulLFctz14nRLrlkxI+bnwwH5kmwgiMpICPK+7bTt80/Ujc5unAYxJJ/m92FtjEhTyr
 rZQFFBjA9n47mgH41nNRY1sqnJJkVzDent1oRzzj3DPhe56/U11NtIdKFnhmsDLlBIAC
 kPOMxWdM8IHif7T8Rwsr/bBNZN2yNIVxKaz+r9m5RV0F4HbqBQlLR0j+Z2RbvdXcQrCY
 ZLdg==
X-Gm-Message-State: APjAAAWjLhjfGnsnI7upldcwo7dEhxb6S3PAv61AiDzqa8/s4l2N2xMr
 f1/PBW3m7xRgk+Seiazmg8cdNsvUglQ=
X-Google-Smtp-Source: APXvYqzwz26yMOMo40XKjD5h575cEiKxil92L7gvOZKyvgqOrJLLPEDQRQdTaoCEw9ZkHBSHV5KgXw==
X-Received: by 2002:a24:2547:: with SMTP id g68mr16803950itg.109.1559573070164; 
 Mon, 03 Jun 2019 07:44:30 -0700 (PDT)
Received: from [192.168.1.138] ([216.160.37.230])
 by smtp.gmail.com with ESMTPSA id w189sm6048860itf.39.2019.06.03.07.44.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 07:44:29 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Distro bootcmd: Re: 5.2-rc1 boot on Unleashed
From: Troy Benjegerdes <troy.benjegerdes@sifive.com>
In-Reply-To: <mvmwoi37xlh.fsf@suse.de>
Date: Mon, 3 Jun 2019 09:44:28 -0500
Message-Id: <8D6E3ACE-7AA9-49F9-BF35-15777E7D47CF@sifive.com>
References: <5c1ffb76-b18a-dbae-d3ad-f3d2cd41ee44@wdc.com>
 <alpine.DEB.2.21.9999.1905220942040.20842@viisi.sifive.com>
 <db248e63-c0bc-7fd8-cf2d-d13c8f140036@wdc.com>
 <alpine.DEB.2.21.9999.1905221334460.23235@viisi.sifive.com>
 <34F7A31E-17F9-4A3C-9F42-DE7837F899CE@sifive.com>
 <CAAhSdy0R6UgxhgrU9NZegmoigjqZmx6RwoGngPdmzrzaUUxpTA@mail.gmail.com>
 <4572851B-EF46-45A1-A806-663894673EF9@sifive.com>
 <MN2PR04MB60610DD66EC6E93C25D18F5F8D1F0@MN2PR04MB6061.namprd04.prod.outlook.com>
 <mvm1s0hd5ln.fsf@suse.de> <E42C85A7-47D6-4A8E-B9C8-A5D42057A3F3@sifive.com>
 <20190529185951.5rsoozymr32xychb@excalibur.cnev.de> <mvmwoi37xlh.fsf@suse.de>
To: Andreas Schwab <schwab@suse.de>,
 Karsten Merker <merker@debian.org>
X-Mailer: Apple Mail (2.3445.9.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_074431_530976_10648586 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Palmer Dabbelt <palmer@sifive.com>, Dany Nativel <dany.nativel@sifive.com>,
 u-boot <U-Boot@lists.denx.de>, Anup Patel <anup@brainfault.org>,
 Anup Patel <Anup.Patel@wdc.com>, Atish Patra <Atish.Patra@wdc.com>,
 Lukas Auer <lukas.auer@aisec.fraunhofer.de>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Bin Meng <bmeng.cn@gmail.com>,
 =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Cgo+IE9uIEp1biAzLCAyMDE5LCBhdCA1OjQ5IEFNLCBBbmRyZWFzIFNjaHdhYiA8c2Nod2FiQHN1
c2UuZGU+IHdyb3RlOgo+IAo+IE9uIE1haSAyOSAyMDE5LCBLYXJzdGVuIE1lcmtlciA8bWVya2Vy
QGRlYmlhbi5vcmc+IHdyb3RlOgo+IAo+PiBNYWlubGluZSBVLUJvb3QgYWxyZWFkeSB1c2VzIHRo
ZSBkaXN0cm8gYm9vdGNtZCBlbnZpcm9ubWVudCBmb3IKPj4gdGhlIHFlbXUgInZpcnQiIG1hY2hp
bmUgYW5kIGl0IHdvcmtzIHdlbGwuCj4gCj4gVGhlIGRpc3Ryb19ib290Y21kIGRvZXNuJ3Qgd29y
ayBmb3IgdGhlIHNpZml2ZSBwbGF0Zm9ybSB5ZXQgYmVjYXVzZSBpdAo+IGRvZXNuJ3Qgc2V0IHRo
ZSBjb3JyZWN0IE1BQyBhZGRyZXNzIGZvciBib290aW5nLgo+IAo+IEFuZHJlYXMuCj4gCgpCZWZv
cmUgd2UgZ28gYW4gdXNlIGRpc3Ryb19ib290Y21kIGFuZCBkcmFnIGluIGEgYnVuY2ggb2YgbGVn
YWN5IHN0dWZmIAp3ZSByZWFsbHkgc2hvdWxkIG5vdCBiZSB1c2luZywgY2FuIHdlIG1ha2Ugc29t
ZSBraW5kIG9mIGVmZm9ydCB0byBkZWNpZGUKd2hhdCB0aGUgZGVzaWduIGdvYWxzIGFuZCBib290
IGZsb3cgc2hvdWxkIGxvb2sgbGlrZSBpbnN0ZWFkIHVzaW5nIHRoZSAKZGVmYXVsdCBsZWdhY3kg
YmVoYXZpb3Igb2YgYSBidW5jaCBvZiBoYXJkIHRvIHJlYWQgYW5kIG1haW50YWluIENQUAptYWNy
b3M/CgpUaGUgZmlyc3QgdGhpbmcgSSBub3RpY2UgaXMgdGhhdCB0aGUgZGVmYXVsdCBkaGNwIHRh
cmdldCBpcyDigJhib290LnNjci51aW1n4oCZLgoKV2hhdCBnb29kIGRvZXMgaXQgZG8gbGludXgg
ZGlzdHJvcyBvbiBSaXNjViB0byBrZWVwIHVzaW5nIHRoZSBvbGQgYm9vdApzY3JpcHQgZm9ybWF0
LCByYXRoZXIgdGhhbiBqdXN0IGxvYWQgYSB0ZXh0IGZpbGUgYW5kIHVzZSDigJhlbnYgaW1wb3J0
4oCZPyBJcyB0aGVyZQpzb21lIGJlbmVmaXQgdG8gdGhpcz8gRG8gd2UgZ2FpbiBzb21ldGhpbmcg
ZnJvbSB0aGUgLnNjciBmb3JtYXQsIGxpa2UKbWF5YmUgY3J5cHRvZ3JhcGhpYyBzaWduYXR1cmUg
c3VwcG9ydD8KCkhvdyBkbyB3ZSB3YW50IHRvIHN1cHBvcnQgc2VjdXJlIGJvb3QgaW50byBEZWJp
YW4sIEZlZG9yYSwgYW5kIFN1c2UsCmFuZCBkb2VzIGRpc3Ryb19ib290Y21kIGhhdmUgYSB3YXkg
dG8gZG8gdGhpcywgb3IgY2FuIHdlIGNvbWUgdXAgd2l0aApzb21lIGltcHJvdmVtZW50IHRoYXQg
ZG9lc27igJl0IGRlcGVuZCBvbiB0cnlpbmcgdG8gZG8gYWxsIHRoZSB3b3JrIGluCkNQUCBtYWNy
b3MgYW5kIFUtYm9vdCBydW50aW1lIHNjcmlwdHM/CgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtcmlzY3YgbWFpbGluZyBsaXN0CmxpbnV4LXJp
c2N2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yaXNjdgo=
