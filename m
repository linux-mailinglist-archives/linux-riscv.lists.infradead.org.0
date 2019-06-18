Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB7254A790
	for <lists+linux-riscv@lfdr.de>; Tue, 18 Jun 2019 18:50:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i2OMizok8KM1Og/TbCUnjiF0FxRmQFDh+IEfI3qQgdo=; b=VGf9FJj1sJfTYp
	e3UGrgepsttmJ9cJQs8aWwi9GDUzhj/JUbQhh/EqgIwRTBr3RrkY8b22Mpwo/vvlfFwDvxlOMHusm
	Git+p2RVkG48nmkjMFYADqzZxkm79cUHv8d+MPkxbNnm3+8M8W/X3DjZpY6ZyWJ66Sag7aOwv/kDE
	jvkyLJA/VmPLLl0PV3iVb/o6+SQhMABYsZO/DjIp+Lb53seYYLtWrz/Tz9dZPsmGuTM+4wy38LsFT
	YwIWvvCKdTJ+HaLIQvrjghz2N0A6mottaJngR18399nNQ+6gkNIvQJxAi6dEGkxFT6ECHM9stWrbw
	7QKituw43xmgJWlHhYBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdHJF-0008OK-4e; Tue, 18 Jun 2019 16:50:13 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdHIz-0007Ll-2w
 for linux-riscv@lists.infradead.org; Tue, 18 Jun 2019 16:49:58 +0000
Received: by mail-io1-xd42.google.com with SMTP id e5so31498030iok.4
 for <linux-riscv@lists.infradead.org>; Tue, 18 Jun 2019 09:49:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=J5nux9DmROYeE56s/BQAf6HcvIGxMJ51i9fQdjtJRGo=;
 b=hqS5I/CprE/DXrjhB2RtBrF+oejKGdk3zNCPfvhEilNd8g6oS+9FCyeX5xoWyR95Pv
 QXfQpUrDVSyyPbwMEGtN/Anc7PQkgQch9Ion+L5uVbaRRsodXcJAWiAUSSTp5br1+rqC
 Nob53UB4jzbHqZydh8I42+TynMH/npouE7S2Z4PEOQ+I9MAAdV002tFiTkmYHOab8byS
 jhMHwalM8OjU3wLxgs3gZ4IwWYogLkZl4yUaunnYG6H9SmzH9RHYFHwmJYqs59Dx7kzn
 QlOSOVrA6U7UdmnKfYIHqVc7p0uQD/EUtAdDuexdd4hLamN0a9q8EEJCyuLh6ELLJcYO
 G+oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=J5nux9DmROYeE56s/BQAf6HcvIGxMJ51i9fQdjtJRGo=;
 b=Oi31miv5EOqY2Nwo8wPVohvL/DyFGZ6qBxKPCNW2grt7a1dX9fch8IdXOSip4HUVis
 CUdW9c/Ehqkr07nD+Y64JGxWaUlZTA0Z5jCAT6A2sI3hIuzc4CCXcue837BufxvmRn+h
 8OK+3mj6n0LQWCZ07rWJ7EqA+1Hqw8KHmDExtIEiYyPrL33c+q7vSVtWz7OitlsMD0Gt
 nR54UjRb9FOchNdgSBpgfkKAdvFWSXllh+7fNOlJW1VTmI1OPdcPrlzdcdjKzSWs+h01
 4uKHP2bsPNoXTqiMOqCLXUU2j8GDyxg4P1S8v7INYl3CwBc4H8Mpf+suLraPySxmJUNV
 Z11Q==
X-Gm-Message-State: APjAAAWbGBxxJMmqQbzE8BEI92bNWyFAB7B8W7bonNwy/+w+EKtFfXii
 IIoiDmL5A0Q7H9+3m0SzA1jKxw==
X-Google-Smtp-Source: APXvYqyQiMRJSW+WsgFrJq67pivLuHVMSleBEdiKqkJFj7YjDFmJQLp16dpykNpYQIUlonlZMP6LSA==
X-Received: by 2002:a5d:9291:: with SMTP id s17mr3521902iom.10.1560876593344; 
 Tue, 18 Jun 2019 09:49:53 -0700 (PDT)
Received: from [192.168.1.196] ([216.160.37.230])
 by smtp.gmail.com with ESMTPSA id b6sm11518234iok.71.2019.06.18.09.49.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 09:49:52 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: [PATCH v2 0/2] Add macb support for SiFive FU540-C000
From: Troy Benjegerdes <troy.benjegerdes@sifive.com>
In-Reply-To: <CAAhSdy3zODw=JFaN=2F4K5-umihJDivLO8J8LBdkFkuZgzu41Q@mail.gmail.com>
Date: Tue, 18 Jun 2019 11:49:51 -0500
Message-Id: <946B2B53-7A16-4B8D-8CB9-34EFFB9E84D6@sifive.com>
References: <1560745167-9866-1-git-send-email-yash.shah@sifive.com>
 <mvmtvco62k9.fsf@suse.de>
 <alpine.DEB.2.21.9999.1906170252410.19994@viisi.sifive.com>
 <mvmpnnc5y49.fsf@suse.de>
 <alpine.DEB.2.21.9999.1906170305020.19994@viisi.sifive.com>
 <mvmh88o5xi5.fsf@suse.de>
 <alpine.DEB.2.21.9999.1906170419010.19994@viisi.sifive.com>
 <F48A4F7F-0B0D-4191-91AD-DC51686D1E78@sifive.com>
 <d2836a90b92f3522a398d57ab8555d08956a0d1f.camel@wdc.com>
 <alpine.DEB.2.21.9999.1906172019040.15057@viisi.sifive.com>
 <CAAhSdy3zODw=JFaN=2F4K5-umihJDivLO8J8LBdkFkuZgzu41Q@mail.gmail.com>
To: Anup Patel <anup@brainfault.org>
X-Mailer: Apple Mail (2.3445.9.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_094957_179435_0D06EAFE 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 Atish Patra <atish.patra@wdc.com>, "jamez@wit.com" <jamez@wit.com>,
 "palmer@sifive.com" <palmer@sifive.com>, "ynezz@true.cz" <ynezz@true.cz>,
 "nicolas.ferre@microchip.com" <nicolas.ferre@microchip.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "sachin.ghadi@sifive.com" <sachin.ghadi@sifive.com>,
 "yash.shah@sifive.com" <yash.shah@sifive.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Lukas Auer <lukas.auer@aisec.fraunhofer.de>,
 Paul Walmsley <paul.walmsley@sifive.com>, "schwab@suse.de" <schwab@suse.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Bin Meng <bmeng.cn@gmail.com>, "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Cgo+IE9uIEp1biAxOCwgMjAxOSwgYXQgNDozMiBBTSwgQW51cCBQYXRlbCA8YW51cEBicmFpbmZh
dWx0Lm9yZz4gd3JvdGU6Cj4gCj4+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51
eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC9jb21taXQvP2lkPTcyMjk2YmRlNGY0MjA3
NTY2ODcyZWUzNTU5NTBhNTljYmMyOWY4NTIKCkkgYWRkZWQgeW91ciBwYXRjaGVzLCBhbG9uZyB3
aXRoIHR3byBvZiBtaW5lLCBhbmQgcmViYXNlZCB0aGVtCnRvIHRoZSBsYXRlc3QgVS1ib290IG1h
c3RlciwgYW5kIHB1dCB0aGVtIG9uIHRoZSDigJh0by11cHN0cmVhbeKAmSBicmFuY2gKYXQgaHR0
cHM6Ly9naXRodWIuY29tL3NpZml2ZS91LWJvb3QvdHJlZS90by11cHN0cmVhbQoKSSBhbSBtb3N0
IGludGVyZXN0ZWQgaW4gcmV2aWV3IG9mIHRoZSBwYXRjaCB0aGF0IGFkZHMgdGhlIERUUyBmaWxl
cwpmcm9tIExpbnV4IHRvIFUtYm9vdCwgYWxvbmcgd2l0aCBhIOKAmC11LWJvb3QuZHRzaeKAmSBm
aWxlIHdoaWNoIGluY2x1ZGVzCnNldmVyYWwgZXh0cmEgdGhpbmdzLCBtb3N0IG5vdGFibHkgYW4g
ZXRoZXJuZXQgZW50cnkgWzFdIHdoaWNoIGRvZXMKbm90IG1hdGNoIHRoZSBuZXcgcHJvcG9zZWQg
Y2hhbmdlcyBmb3IgdGhlIE1hY0IgZHJpdmVyIHRoYXQgWWFzaAppcyB3b3JraW5nIG9uLgoKSG93
IGNsb3NlIGFyZSB3ZSB0byBjb25zZW5zdXMgb24gdGhlIG5ldyDigJxzaWZpdmUsZnU1NDAtbWFj
YuKAnQpkZXZpY2UgdHJlZSBlbnRyeSBmb3JtYXQ/IElzIHRoaXMgc29tZXRoaW5nIHRoYXQgaXMg
c3RhYmxlIGVub3VnaCB0bwpzdGFydCBiYXNpbmcgc29tZSB3b3JrIGluIE0tbW9kZSBVLWJvb3Qg
b24geWV0LCBvciBkbyB3ZSBleHBlY3QKbW9yZSBjaGFuZ2VzPwoKWzFdIGh0dHBzOi8vZ2l0aHVi
LmNvbS9zaWZpdmUvdS1ib290L2NvbW1pdC8zNWU0MTY4ZTM2MTM5NzIyZjMwMTQzYTBjYTBhYTg2
MzdkZDNlZTA0I2RpZmYtMjdkMmQzNzVkZGFjNTJmMWJjYTcxNTk0MDc1ZTFiZTRSOTMKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtcmlzY3YgbWFp
bGluZyBsaXN0CmxpbnV4LXJpc2N2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yaXNjdgo=
